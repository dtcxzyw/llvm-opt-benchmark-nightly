inline.NumInlined: 1045
inline.NumDeleted: 503
begin_hunk_0_@_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_120GenerateTrackerCallsERKNS2_7OptionsEPKNS0_10DescriptorESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN4absl12lts_202505124SpanIKNS3_4CallEEE:bb.a
  store i64 16, ptr %8, align 16
  store ptr @.str.76, ptr %i.v, align 8
  store i64 %.sroa.011.0.copyload, ptr %i.w, align 16
  store ptr %.sroa.212.0.copyload, ptr %i.x, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %9, i64 5, ptr nonnull @.str.67, ptr noundef nonnull %8, i64 noundef 2)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.cg = getelementptr inbounds nuw i8, ptr %.0164, i64 36
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !34, !range !27, !noundef !28
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.0164, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !3
  %i.cl = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.ck, ptr noundef nonnull %i.y)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.z                     ; 2 uses
  store i64 %i.cn, ptr %10, align 8, !tbaa !57
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i64 %i.cn, ptr %7, align 16
  store ptr %i.y, ptr %i.ab, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %9, i64 4, ptr nonnull @.str.68, ptr noundef nonnull %7, i64 noundef 1)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.p

bb.m:                                             ; preds = %bb.ag, %bb.ad, %bb.f
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.n:                                             ; preds = %bb.h
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.o:                                             ; preds = %bb.k, %bb.j
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.bm

bb.p:                                             ; preds = %bb.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i64 1, ptr %11, align 8
  store ptr @.str.69, ptr %i.ac, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.cr = getelementptr inbounds nuw i8, ptr %.0164, i64 56
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !68, !range !27, !noundef !28
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %.0164, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %.sroa.09.0.copyload = load i64, ptr %i.cu, align 8, !tbaa !31
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0164, i64 48
  %.sroa.210.0.copyload = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !33
  store i64 %.sroa.09.0.copyload, ptr %12, align 8, !tbaa !31
  store ptr %.sroa.210.0.copyload, ptr %.sroa.2.0..sroa_idx.i63, align 8, !tbaa !33
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.bm

bb.u:                                             ; preds = %bb.r
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.bm

bb.v:                                             ; preds = %bb.s, %bb.q
  %.sroa.0116.0 = phi i64 [ 2, %bb.s ], [ 0, %bb.q ]
  %.sroa.7.0 = phi ptr [ @.str.71, %bb.s ], [ @.str.70, %bb.q ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0164, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !110 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0164, i64 72
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !110 ; 3 uses
  %.not127159 = icmp eq ptr %i.cy, %i.da
  br i1 %.not127159, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store i64 %.sroa.0116.0, ptr %13, align 8, !tbaa !31
  store ptr %.sroa.7.0, ptr %.sroa.2.0..sroa_idx.i64, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !74
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !109
  store i64 %i.dd, ptr %14, align 8
  store ptr %i.db, ptr %i.ad, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 2 uses
  %.not127.peel = icmp eq ptr %i.de, %i.da
  br i1 %.not127.peel, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %bb.x
  %.sroa.0111.0160 = phi ptr [ %i.di, %bb.x ], [ %i.de, %bb.w ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store i64 2, ptr %13, align 8, !tbaa !31
  store ptr @.str.71, ptr %.sroa.2.0..sroa_idx.i64, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.df = load ptr, ptr %.sroa.0111.0160, align 8, !tbaa !74
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0111.0160, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !109
  store i64 %i.dh, ptr %14, align 8
  store ptr %i.df, ptr %i.ad, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0111.0160, i64 32 ; 2 uses
  %.not127 = icmp eq ptr %i.di, %i.da
  br i1 %.not127, label %._crit_edge, label %.lr.ph, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %.lr.ph.preheader
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  store i64 2, ptr %15, align 8
  store ptr @.str.72, ptr %i.ae, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.aa:                                            ; preds = %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.bm

bb.ab:                                            ; preds = %bb.g, %bb.e, %bb.d
  %i.dk = load i8, ptr %i.af, align 1, !tbaa !113, !range !27, !noundef !28
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dm = load i8, ptr %i.ag, align 8, !tbaa !29, !range !27, !noundef !28
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.ad, %bb.ab, %bb.ac, %bb.z
  %i.do = load i64, ptr %i.u, align 8, !tbaa !109 ; 5 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.dq = add i64 %i.do, 1                        ; 3 uses
  %i.dr = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.t                 ; 2 uses
  br i1 %i.ds, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.dt = icmp ult i64 %i.do, 16
  call void @llvm.assume(i1 %i.dt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.af, %bb.ae
  %27 = load i64, ptr %i.t, align 8
  %28 = select i1 %i.ds, i64 15, i64 %27
  %i.du = icmp ugt i64 %i.dq, %28
  br i1 %i.du, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.do, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.ag
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !74
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.dv = phi ptr [ %.pre.i, %.noexc ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.do
  store i8 10, ptr %i.dw, align 1, !tbaa !26
  store i64 %i.dq, ptr %i.u, align 8, !tbaa !109
  %i.dx = load ptr, ptr %9, align 8, !tbaa !74
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dq
  store i8 0, ptr %i.dy, align 1, !tbaa !26
  br i1 %i.q, label %bb.ai, label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store i64 6, ptr %17, align 8
  store ptr @.str.73, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.dz = load i8, ptr %i.ai, align 2, !tbaa !114, !range !27, !noundef !28
  %i.ea = trunc nuw i8 %i.dz to i1                ; 2 uses
  %.sroa.0.0.copyload.i = select i1 %i.ea, i64 16, i64 6
  %.sroa.2.0.copyload.i = select i1 %i.ea, ptr @.str.78, ptr @.str.77
  store i64 %.sroa.0.0.copyload.i, ptr %18, align 8, !tbaa !31
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i65, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  store i64 38, ptr %19, align 8
  store ptr @.str.74, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.eb = load ptr, ptr %9, align 8, !tbaa !74
  %i.ec = load i64, ptr %i.u, align 8, !tbaa !109
  store i64 %i.ec, ptr %20, align 8
  store ptr %i.eb, ptr %i.ak, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(48) %20)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.ed = load ptr, ptr %9, align 8, !tbaa !74    ; 6 uses
  %i.ee = icmp eq ptr %i.ed, %i.t
  %i.ef = load ptr, ptr %16, align 8, !tbaa !74   ; 5 uses
  %i.eg = icmp eq ptr %i.ef, %i.al                ; 2 uses
  br i1 %i.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.aj
  br i1 %i.eg, label %bb.ak, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.aj
  br i1 %i.eg, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.eh = load i64, ptr %i.am, align 8, !tbaa !109 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  switch i64 %i.eh, label %bb.am [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !26
  store i8 %i.ej, ptr %i.ed, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr align 1 %i.ef, i64 %i.eh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.ek = load i64, ptr %i.am, align 8, !tbaa !109 ; 2 uses
  store i64 %i.ek, ptr %i.u, align 8, !tbaa !109
  %i.el = load ptr, ptr %9, align 8, !tbaa !74
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 0, ptr %i.em, align 1, !tbaa !26
  %.pre.i67 = load ptr, ptr %16, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ef, ptr %9, align 8, !tbaa !74
  %i.en = load <2 x i64>, ptr %i.am, align 8, !tbaa !26
  store <2 x i64> %i.en, ptr %i.u, align 8, !tbaa !26
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.eo = load i64, ptr %i.t, align 8, !tbaa !26
  store ptr %i.ef, ptr %9, align 8, !tbaa !74
  %i.ep = load <2 x i64>, ptr %i.am, align 8, !tbaa !26
  store <2 x i64> %i.ep, ptr %i.u, align 8, !tbaa !26
  %.not.i66 = icmp eq ptr %i.ed, null
  br i1 %.not.i66, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ed, ptr %16, align 8, !tbaa !74
  store i64 %i.eo, ptr %i.al, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.al, ptr %16, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.an, %bb.ao
  %i.eq = phi ptr [ %.pre.i67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ed, %bb.an ], [ %i.al, %bb.ao ]
  store i64 0, ptr %i.am, align 8, !tbaa !109
  store i8 0, ptr %i.eq, align 1, !tbaa !26
  %i.er = load ptr, ptr %16, align 8, !tbaa !74   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.al
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.et = load i64, ptr %i.al, align 8, !tbaa !26
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ai
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.bm

bb.aq:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  store i64 9, ptr %24, align 8, !tbaa !31
  store ptr @.str.80, ptr %.sroa.2.0..sroa_idx.i68, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %.sroa.0.0.copyload = load i64, ptr %.0164, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0164, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !33
  store i64 %.sroa.0.0.copyload, ptr %25, align 8, !tbaa !31
  store ptr %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i69, align 8, !tbaa !33
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull align 8 dereferenceable(48) %25)
          to label %bb.ar unwind label %bb.bk

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.an, ptr %22, align 8, !tbaa !108
  %i.ew = load ptr, ptr %23, align 8, !tbaa !74   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ao
  br i1 %i.ex, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

bb.as:                                            ; preds = %bb.ar
  %i.ey = load i64, ptr %i.ap, align 8, !tbaa !109 ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 16
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add nuw nsw i64 %i.ey, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.fa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.ar
  store ptr %i.ew, ptr %22, align 8, !tbaa !74
  %i.fb = load i64, ptr %i.ao, align 8, !tbaa !26
  store i64 %i.fb, ptr %i.an, align 8, !tbaa !26
  %.pre = load i64, ptr %i.ap, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.as
  %i.fc = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %i.ey, %bb.as ]
  store i64 %i.fc, ptr %i.aq, align 8, !tbaa !109
  store ptr %i.ao, ptr %23, align 8, !tbaa !74
  store i64 0, ptr %i.ap, align 8, !tbaa !109
  store i8 0, ptr %i.ao, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.as, ptr %6, align 8, !tbaa !108
  %i.fd = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.fe = load i64, ptr %i.u, align 8, !tbaa !109 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.fe, ptr %i.a, align 8, !tbaa !31
  %i.ff = icmp ugt i64 %i.fe, 15
  br i1 %i.ff, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.fg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.aw  ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i
  store ptr %i.fg, ptr %6, align 8, !tbaa !74
  %i.fh = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.fh, ptr %i.as, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

end_hunk_0
