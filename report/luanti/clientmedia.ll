Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmedia?download=true
inline.NumInlined: 1424
inline.NumDeleted: 590
begin_hunk_0_@_ZN21ClientMediaDownloader4stepEP6Client:bb.a
bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !108
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.bc, align 8, !tbaa !101
  br label %bb.n

bb.n:                                             ; preds = %.noexc11, %bb.l
  %i.bp = phi ptr [ %.pre.i, %.noexc11 ], [ %i.bh, %bb.l ]
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef %i.bg)
          to label %_ZN11StreamProxylsIiEERS_OT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsIiEERS_OT_.exit:                ; preds = %bb.k, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.12, ptr %i.b, align 8, !tbaa !100
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZN11StreamProxylsIiEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.13, ptr %i.a, align 8, !tbaa !100
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !101 ; 5 uses
  %.not.i16 = icmp eq ptr %i.bt, null
  br i1 %.not.i16, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.bv = getelementptr i8, ptr %i.bu, i64 -24
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !108
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.r
  %.pre.i17 = load ptr, ptr %i.bs, align 8, !tbaa !101 ; 2 uses
  %.pre = load ptr, ptr %.pre.i17, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre34 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.s

bb.s:                                             ; preds = %.noexc18, %bb.q
  %i.cb = phi i64 [ %.pre34, %.noexc18 ], [ %i.bw, %bb.q ]
  %i.cc = phi ptr [ %.pre.i17, %.noexc18 ], [ %i.bt, %bb.q ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 240
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !114 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.t
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !119
  %.not.i1.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 67
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !29
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cf)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.v
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke noundef signext i8 %i.cm(ptr noundef nonnull align 8 dereferenceable(570) %i.cf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc24, %bb.u
  %.0.i.i.i = phi i8 [ %i.cj, %bb.u ], [ %i.cn, %.noexc24 ]
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, i8 noundef signext %.0.i.i.i)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.co)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke40, %.invoke, %.peel.next, %bb.m, %bb.n, %_ZN11StreamProxylsIiEERS_OT_.exit, %bb.o, %bb.r, %bb.t, %bb.v, %.noexc24, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc26, %.noexc, %_ZTW10infostream.exit, %_ZN11StreamProxylsEPFRSoS0_E.exit, %.loopexit, %.peel.begin
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %i.k, align 8, !tbaa !26  ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.l
  br i1 %i.cr, label %_ZN15HTTPFetchResultD2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %.noexc26, %bb.p, %bb.h
  invoke void @_ZN21ClientMediaDownloader26startConventionalTransfersEP6Client(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %.loopexit.thread
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !26  ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.l
  br i1 %i.ct, label %_ZN15HTTPFetchResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.cu = load i64, ptr %i.l, align 8, !tbaa !29
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #28
  br label %_ZN15HTTPFetchResultD2Ev.exit

_ZN15HTTPFetchResultD2Ev.exit:                    ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cw = load i64, ptr %i.l, align 8, !tbaa !29
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cx) #28
  br label %_ZN15HTTPFetchResultD2Ev.exit22

_ZN15HTTPFetchResultD2Ev.exit22:                  ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %lpad.loopexit.split-lp

bb.x:                                             ; preds = %_ZN15HTTPFetchResultD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN21ClientMediaDownloader11initialStepEP6Client(ptr noundef nonnull align 8 dereferenceable(256) initializes((124, 128)) %0, ptr noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string.263", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %struct.HTTPFetchRequest, align 8   ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_Z11wstrgettextB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.263") align 8 %4, ptr noundef nonnull @.str.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.d = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %3) #27 ; 0 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !207
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !208
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i64, ptr %i.h, align 8, !tbaa !139
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not125 = icmp eq ptr %i.m, %i.n
  br i1 %.not125, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = udiv i64 %i.g, 1000000
  %i.p = mul i64 %i.e, 1000
  %i.q = add i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load i32, ptr %i.k, align 4, !tbaa !62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.s = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.j, %bb.a ]
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.034127 = phi i64 [ %i.q, %.lr.ph ], [ %.135, %bb.g ] ; 4 uses
  %.sroa.098.0126 = phi ptr [ %i.m, %.lr.ph ], [ %i.al, %bb.g ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.098.0126, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.098.0126, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !71   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = invoke noundef zeroext i1 @_ZN22IClientMediaDownloader16tryLoadFromCacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_P6Client(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef %1)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.w, align 8, !tbaa !140
  %i.z = load i32, ptr %i.k, align 4, !tbaa !62
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ab = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #27 ; 0 uses
  %i.ac = load i64, ptr %2, align 8, !tbaa !207
  %i.ad = mul i64 %i.ac, 1000
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !208
  %i.af = udiv i64 %i.ae, 1000000
  %i.ag = add i64 %i.af, %i.ad                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %.not.i = icmp ult i64 %i.ag, %.034127
  %10 = sub nuw i64 %i.ag, %.034127
  %i.ah = sub nuw i64 %.034127, %i.ag
  %.0.i = select i1 %.not.i, i64 %i.ah, i64 %10   ; 2 uses
  %i.ai = icmp ugt i64 %.0.i, 32
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = uitofp nsz i64 %.0.i to float
  %i.ak = fdiv nsz float %i.aj, 1.000000e+03
  invoke void @_ZN6Client14drawLoadScreenERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEfi(ptr noundef nonnull align 8 dereferenceable(1674) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef %i.ak, i32 noundef 30)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f, %bb.e
  %.135 = phi i64 [ %.034127, %bb.e ], [ %i.ag, %bb.f ]
  %i.al = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.098.0126) #30 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.n
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

bb.h:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !68
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %._crit_edge
  invoke void @_ZN21ClientMediaDownloader26startConventionalTransfersEP6Client(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1)
          to label %.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.h
  %i.ar = invoke noundef i64 @_Z22httpfetch_caller_allocv()
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !67
  %i.at = load ptr, ptr @g_settings, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.au, ptr %5, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 19, ptr %i.c, align 8, !tbaa !28
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.av, ptr %5, align 8, !tbaa !26
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !28  ; 3 uses
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.av, ptr noundef nonnull align 1 dereferenceable(19) @.str.16, i64 19, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !27
  %i.ay = load ptr, ptr %5, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.ba = invoke noundef i32 @_ZNK8Settings6getS32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %.noexc
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !141
  %i.bc = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.au
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.be = load i64, ptr %i.au, align 8, !tbaa !29
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #28
  %.pre134.a = load i32, ptr %i.bb, align 4, !tbaa !141
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bg = phi i32 [ %.pre134.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ba, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %spec.select = call i32 @llvm.smax.i32(i32 %i.bg, i32 84)
  store i32 %spec.select, ptr %i.bb, align 4, !tbaa !141
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !130
  %i.bi = load ptr, ptr %i.am, align 8, !tbaa !79 ; 2 uses
  %.not130 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not130, label %.loopexit, label %.lr.ph129

.lr.ph129:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i54 = icmp eq ptr @_ZTH12actionstream, null
  %i.bj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @actionstream) ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.n

bb.l:                                             ; preds = %.noexc.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.m:                                             ; preds = %.noexc
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.au
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.m
  %i.cc = load i64, ptr %i.au, align 8, !tbaa !29
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.l
  %.pn = phi { ptr, i32 } [ %i.by, %bb.l ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.bz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.lr.ph129, %bb.an
  %i.ce = phi ptr [ %i.bi, %.lr.ph129 ], [ %i.gw, %bb.an ]
  %i.cf = phi i64 [ 0, %.lr.ph129 ], [ %i.gu, %bb.an ]
  %.0128 = phi i32 [ 0, %.lr.ph129 ], [ %i.gt, %bb.an ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !83 ; 4 uses
  br i1 %.not.i54, label %_ZTW12actionstream.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZTH12actionstream()
  br label %_ZTW12actionstream.exit

_ZTW12actionstream.exit:                          ; preds = %bb.n, %bb.o
  %i.ci = load ptr, ptr %i.bj, align 8, !tbaa !97, !nonnull !98, !align !99 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !198

.noexc55:                                         ; preds = %_ZTW12actionstream.exit
  %.v.i = select i1 %i.cl, i64 976, i64 984
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.v.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.17, ptr %i.b, align 8, !tbaa !100
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %.noexc55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !101 ; 5 uses
  %.not.i57 = icmp eq ptr %i.co, null
  br i1 %.not.i57, label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !31
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !108
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.co)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.r
  %.pre.i = load ptr, ptr %i.cm, align 8, !tbaa !101
  br label %bb.s

bb.s:                                             ; preds = %.noexc58, %bb.q
  %i.cw = phi ptr [ %.pre.i, %.noexc58 ], [ %i.co, %bb.q ]
  %i.cx = load ptr, ptr %i.ch, align 8, !tbaa !26
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !27
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef %i.cx, i64 noundef %i.cz)
          to label %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.p, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.3, ptr %i.a, align 8, !tbaa !100
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.t:                                             ; preds = %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !101 ; 5 uses
  %.not.i61 = icmp eq ptr %i.dc, null
  br i1 %.not.i61, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !31
  %i.de = getelementptr i8, ptr %i.dd, i64 -24
  %i.df = load i64, ptr %i.de, align 8            ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.dc, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !108
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !29
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !29
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !27
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !23, !alias.scope !322
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !26, !alias.scope !323 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !27, !alias.scope !323 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !324
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !26, !alias.scope !322
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !29, !alias.scope !323
  store i64 %i.an, ptr %i.af, align 8, !tbaa !29, !alias.scope !322
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !27, !alias.scope !323
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !27, !alias.scope !322
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !26, !alias.scope !323
  store i64 0, ptr %i.ap, align 8, !tbaa !27, !alias.scope !323
  store i8 0, ptr %i.ah, align 8, !tbaa !29, !alias.scope !323
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !10

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !23, !alias.scope !325
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !26, !alias.scope !326 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !27, !alias.scope !326 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !327
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !26, !alias.scope !325
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !29, !alias.scope !326
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !29, !alias.scope !325
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !27, !alias.scope !326
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !27, !alias.scope !325
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !26, !alias.scope !326
  store i64 0, ptr %i.be, align 8, !tbaa !27, !alias.scope !326
  store i8 0, ptr %i.aw, align 8, !tbaa !29, !alias.scope !326
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !10

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !145
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #28
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !162
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !144
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !145
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #27 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #28
  invoke void @__cxa_rethrow() #29
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bn

bb.l:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #31
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

declare extern_weak void @_ZTH11errorstream() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #22

declare extern_weak void @_ZTH10infostream() #3

declare extern_weak void @_ZTH12actionstream() #3

declare extern_weak void @_ZTH13verbosestream() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(none) }
attributes #14 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn nounwind }
attributes #32 = { builtin allocsize(0) }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !78}
!1 = distinct !{null}
!2 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null, null}
!3 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!4 = distinct !{!4, !78}
!5 = distinct !{!5, !78}
!6 = distinct !{!6, !78}
!7 = distinct !{!7, !78}
!8 = distinct !{null}
!9 = distinct !{!9, !78}
!10 = distinct !{!10, !78}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any pointer", !16, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"long", !16, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !24, i64 8, !16, i64 16}
!26 = !{!25, !21, i64 0}
!27 = !{!25, !24, i64 8}
!28 = !{!24, !24, i64 0}
!29 = !{!16, !16, i64 0}
!30 = !{!"vtable pointer", !15, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"_ZTSSt14_Rb_tree_color", !16, i64 0}
!33 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !20, i64 0}
!34 = !{!"_ZTSSt18_Rb_tree_node_base", !32, i64 0, !33, i64 8, !33, i64 16, !33, i64 24}
!35 = !{!"_ZTSSt15_Rb_tree_header", !34, i64 0, !24, i64 32}
!36 = !{!35, !32, i64 0}
!37 = !{!35, !33, i64 8}
!38 = !{!35, !33, i64 16}
!39 = !{!35, !33, i64 24}
!40 = !{!"_ZTS9FileCache", !25, i64 0}
!41 = !{!"bool", !16, i64 0}
!42 = !{!"_ZTS22IClientMediaDownloader", !40, i64 8, !41, i64 40}
!43 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!44 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !43, i64 0}
!45 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN21ClientMediaDownloader10FileStatusEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !44, i64 0, !35, i64 8}
!46 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN21ClientMediaDownloader10FileStatusEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !45, i64 0}
!47 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN21ClientMediaDownloader10FileStatusESt4lessIS5_ESaISt4pairIKS5_S8_EEE", !46, i64 0}
!48 = !{!"any p2 pointer", !20, i64 0}
!49 = !{!"p2 _ZTSN21ClientMediaDownloader18RemoteServerStatusE", !48, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIPN21ClientMediaDownloader18RemoteServerStatusESaIS2_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIPN21ClientMediaDownloader18RemoteServerStatusESaIS2_EE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIPN21ClientMediaDownloader18RemoteServerStatusESaIS2_EE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIPN21ClientMediaDownloader18RemoteServerStatusESaIS2_EE", !52, i64 0}
!54 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !48, i64 0}
!55 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !20, i64 0}
!56 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !55, i64 0}
!57 = !{!"float", !16, i64 0}
!58 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !57, i64 0, !24, i64 8}
!59 = !{!"_ZTSSt10_HashtableImSt4pairIKmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE", !54, i64 0, !24, i64 8, !56, i64 16, !24, i64 24, !58, i64 32, !55, i64 48}
!60 = !{!"_ZTSSt13unordered_mapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE", !59, i64 0}
!61 = !{!"_ZTS21ClientMediaDownloader", !42, i64 0, !47, i64 48, !53, i64 96, !41, i64 120, !17, i64 124, !17, i64 128, !24, i64 136, !24, i64 144, !17, i64 152, !17, i64 156, !17, i64 160, !60, i64 168, !25, i64 224}
!62 = !{!61, !17, i64 124}
!63 = !{!61, !17, i64 128}
!64 = !{!59, !54, i64 0}
!65 = !{!59, !24, i64 8}
!66 = !{!42, !41, i64 40}
!67 = !{!61, !24, i64 136}
!68 = !{!49, !49, i64 0}
!69 = !{!"p1 _ZTSN21ClientMediaDownloader10FileStatusE", !20, i64 0}
!70 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN21ClientMediaDownloader10FileStatusEE", !25, i64 0, !69, i64 32}
!71 = !{!70, !69, i64 32}
!72 = !{!"p1 int", !20, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!73, !72, i64 0}
!75 = !{!73, !72, i64 16}
!76 = !{!59, !55, i64 16}
!77 = !{!56, !55, i64 0}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!50, !49, i64 0}
!80 = !{!50, !49, i64 16}
!81 = !{ptr @_ZN22IClientMediaDownloaderD2Ev}
!82 = !{!"p1 _ZTSN21ClientMediaDownloader18RemoteServerStatusE", !20, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!33, !33, i64 0}
!85 = !{!"p1 _ZTS9LogTarget", !20, i64 0}
!86 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!87 = !{!"_ZTSSt6locale", !86, i64 0}
!88 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !87, i64 56}
!89 = !{!"_ZTSSt14_Function_base", !16, i64 0, !20, i64 16}
!90 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !89, i64 0, !20, i64 24}
!91 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !88, i64 0, !90, i64 64, !17, i64 96, !16, i64 100}
!92 = !{!"_ZTS17DummyStreamBuffer", !88, i64 0}
!93 = !{!"_ZTSSo"}
!94 = !{!"p1 _ZTSSo", !20, i64 0}
!95 = !{!"_ZTS11StreamProxy", !94, i64 0}
!96 = !{!"_ZTS9LogStream", !85, i64 0, !91, i64 8, !92, i64 368, !93, i64 432, !93, i64 704, !95, i64 976, !95, i64 984}
!97 = !{!96, !85, i64 0}
!98 = !{}
!99 = !{i64 8}
!100 = !{!21, !21, i64 0}
!101 = !{!95, !94, i64 0}
!102 = !{!"_ZTSSt13_Ios_Fmtflags", !16, i64 0}
!103 = !{!"_ZTSSt12_Ios_Iostate", !16, i64 0}
!104 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!105 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !24, i64 8}
!106 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!107 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !102, i64 24, !103, i64 28, !103, i64 32, !104, i64 40, !105, i64 48, !16, i64 64, !17, i64 192, !106, i64 200, !87, i64 208}
!108 = !{!107, !103, i64 32}
!109 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 0}
!110 = !{!"p1 _ZTSSt5ctypeIcE", !20, i64 0}
!111 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!112 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!113 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !107, i64 0, !94, i64 216, !16, i64 224, !41, i64 225, !109, i64 232, !110, i64 240, !111, i64 248, !112, i64 256}
!114 = !{!113, !110, i64 240}
!115 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!116 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!117 = !{!"p1 short", !20, i64 0}
!118 = !{!"_ZTSSt5ctypeIcE", !115, i64 0, !116, i64 16, !41, i64 24, !72, i64 32, !72, i64 40, !117, i64 48, !16, i64 56, !16, i64 57, !16, i64 313, !16, i64 569}
!119 = !{!118, !16, i64 56}
!120 = !{!69, !69, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !73, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !121, i64 0}
!123 = !{!"_ZTSSt6vectorIiSaIiEE", !122, i64 0}
!124 = !{!"_ZTSN21ClientMediaDownloader10FileStatusE", !41, i64 0, !25, i64 8, !17, i64 40, !123, i64 48}
!125 = !{!124, !17, i64 40}
!126 = !{!"p1 _ZTS8Settings", !20, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!"_ZTSN21ClientMediaDownloader18RemoteServerStatusE", !25, i64 0, !17, i64 32}
!129 = !{!128, !17, i64 32}
!130 = !{!50, !49, i64 8}
!131 = !{!61, !41, i64 120}
!132 = !{i8 0, i8 2}
!133 = !{!61, !17, i64 152}
!134 = !{!"_ZTS15HTTPFetchResult", !41, i64 0, !41, i64 1, !24, i64 8, !25, i64 16, !24, i64 48, !24, i64 56}
!135 = !{!134, !41, i64 0}
!136 = !{!134, !41, i64 1}
!137 = !{!134, !24, i64 8}
!138 = !{!134, !24, i64 56}
!139 = !{!35, !24, i64 32}
!140 = !{!124, !41, i64 0}
!141 = !{!61, !17, i64 156}
!142 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0}
!143 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !142, i64 0, !142, i64 8, !142, i64 16}
!144 = !{!143, !142, i64 8}
!145 = !{!143, !142, i64 16}
!146 = !{!61, !24, i64 144}
!147 = !{!61, !17, i64 160}
!148 = !{!73, !72, i64 8}
!149 = !{!17, !17, i64 0}
!150 = !{!59, !24, i64 24}
!151 = !{!55, !55, i64 0}
!152 = !{!72, !72, i64 0}
end_hunk_1
