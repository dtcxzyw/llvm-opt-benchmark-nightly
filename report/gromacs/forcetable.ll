Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/forcetable?download=true
inline.NumInlined: 816
inline.NumDeleted: 355
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z11make_tablesP8_IO_FILERK19interaction_const_tPKcfi:bb.a
bb.ey:                                            ; preds = %bb.ew
  %i.adb = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %indvars.iv.i108
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !80
  %i.add = fneg double %i.adc
  %i.ade = fmul double %.07.i, %i.add
  %.phi.trans.insert.i109 = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %indvars.iv.i108
  %.pre.i110 = load double, ptr %.phi.trans.insert.i109, align 8, !tbaa !80
  %.pre9.i = add nuw nsw i64 %indvars.iv.i108, 1
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %indvars.iv.next.pre-phi.i = phi i64 [ %.pre9.i, %bb.ey ], [ %i.abx, %bb.ex ] ; 2 uses
  %i.adf = phi double [ %.pre.i110, %bb.ey ], [ %i.ace, %bb.ex ]
  %.037.i = phi double [ %i.ade, %bb.ey ], [ %i.acm, %bb.ex ]
  %.1.i111 = phi double [ %.07.i, %bb.ey ], [ %i.acj, %bb.ex ]
  %i.adg = phi <2 x float> [ zeroinitializer, %bb.ey ], [ %i.ada, %bb.ex ]
  %i.adh = mul nsw i64 %indvars.iv.i108, %i.abt
  %i.adi = insertelement <2 x double> poison, double %i.adf, i64 0
  %i.adj = insertelement <2 x double> %i.adi, double %.037.i, i64 1
  %i.adk = fmul <2 x double> %i.abv, %i.adj
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.adh ; 2 uses
  %i.adl = fptrunc <2 x double> %i.adk to <2 x float>
  store <2 x float> %i.adl, ptr %gep.i, align 4, !tbaa !21
  %i.adm = getelementptr i8, ptr %gep.i, i64 8
  store <2 x float> %i.adg, ptr %i.adm, align 4, !tbaa !21
  %exitcond.not.i112 = icmp eq i64 %indvars.iv.next.pre-phi.i, %wide.trip.count.i107
  br i1 %exitcond.not.i112, label %_ZL10copy2tableiiiN3gmx8ArrayRefIKdEES2_S2_fNS0_IfEE.exit, label %bb.ew, !llvm.loop !1

_ZL10copy2tableiiiN3gmx8ArrayRefIKdEES2_S2_fNS0_IfEE.exit: ; preds = %bb.ez, %bb.ev
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.bt, label %bb.by, !llvm.loop !146

.body103:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ee, %bb.df, %bb.er, %bb.bj, %bb.bc
  %.pn69.pn = phi { ptr, i32 } [ %i.ee, %bb.bc ], [ %i.abd, %bb.er ], [ %.pn, %bb.bj ], [ %i.vv, %bb.ee ], [ %i.no, %bb.df ], [ %lpad.loopexit.split-lp275, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorI11t_tabledataSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %.body

.body:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.w, %bb.q, %.body103
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %.body103 ], [ %i.bd, %bb.ap ], [ %i.w, %bb.q ], [ %i.ac, %bb.w ], [ %.pn57.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i ]
  %i.adn = load ptr, ptr %0, align 8, !tbaa !82   ; 3 uses
  %.not.i113 = icmp eq ptr %i.adn, null
  br i1 %.not.i113, label %_ZNSt10unique_ptrI12t_forcetableSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI12t_forcetableEclEPS0_.exit.i

_ZNKSt14default_deleteI12t_forcetableEclEPS0_.exit.i: ; preds = %.body
  call void @_ZN12t_forcetableD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.adn) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.adn, i64 noundef 56) #26
  br label %_ZNSt10unique_ptrI12t_forcetableSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI12t_forcetableSt14default_deleteIS0_EED2Ev.exit: ; preds = %.body, %_ZNKSt14default_deleteI12t_forcetableEclEPS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL11read_tablesP8_IO_FILEPKcii(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, i32 noundef range(i32 1, 4) %3, i32 noundef %4) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca [4096 x i8], align 16             ; 7 uses
  %i.f = alloca i32, align 4                      ; 15 uses
  %i.g = alloca double, align 8                   ; 6 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 17 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %9 = alloca %"class.gmx::MultiDimArray", align 8 ; 11 uses
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  store ptr %2, ptr %i.d, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 0, ptr %i.f, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.j = shl nuw nsw i32 %3, 1
  %i.k = or disjoint i32 %i.j, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext 2)
  invoke void @_ZN3gmx15findLibraryFileERKNSt10filesystem7__cxx114pathEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %8, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull %i.m) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.c, %bb.b
  %i.n = load ptr, ptr %8, align 8, !tbaa !33     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !34
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #26
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_Z11readXvgDataRKNSt10filesystem7__cxx114pathE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::MultiDimArray") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %.not164 = icmp eq i32 %i.k, %i.u
  br i1 %.not164, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZNKSt10filesystem7__cxx114path6stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %11, align 8, !tbaa !33
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 578, ptr noundef nonnull @.str.21, ptr noundef %i.v, i32 noundef %i.u, i32 noundef %i.k) #25
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ds

bb.j:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3gmx13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEED2Ev.exit258

bb.k:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn180 = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #24
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %.pn180.pn = phi { ptr, i32 } [ %.pn180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.dq

bb.o:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.ah = load i64, ptr %i.ag, align 8            ; 17 uses
  %i.ai = trunc i64 %i.ah to i32                  ; 10 uses
  store i32 %i.ai, ptr %i.h, align 4, !tbaa !83
  %.sroa.35394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56
  %.sroa.35394.0.copyload = load ptr, ptr %.sroa.35394.0..sroa_idx, align 8, !tbaa !98 ; 25 uses
  %.sroa.35394.0.copyload803 = ptrtoaddr ptr %.sroa.35394.0.copyload to i64 ; 4 uses
  %i.aj = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %i.aj, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.ak = load double, ptr %.sroa.35394.0.copyload, align 8, !tbaa !80 ; 2 uses
  %i.al = fcmp une double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNKSt10filesystem7__cxx114path6stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.am = load ptr, ptr %13, align 8, !tbaa !33
  %i.an = load double, ptr %.sroa.35394.0.copyload, align 8, !tbaa !80
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 591, ptr noundef nonnull @.str.22, ptr noundef %i.am, double noundef %i.an, double noundef 0.000000e+00) #25
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.w:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.w
  %i.au = load i64, ptr %i.as, align 8, !tbaa !34
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.v
  %.pn176 = phi { ptr, i32 } [ %i.ap, %bb.v ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %i.aq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #24
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %bb.u
  %.pn176.pn = phi { ptr, i32 } [ %.pn176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189 ], [ %i.ao, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.body

bb.y:                                             ; preds = %bb.o
  %i.aw = icmp eq i32 %4, 1
  %. = select i1 %i.aw, double 0.000000e+00, double -1.800000e+02 ; 2 uses
  %i.ax = load double, ptr %.sroa.35394.0.copyload, align 8, !tbaa !80 ; 2 uses
  %i.ay = fcmp une double %i.ax, %.
  br i1 %i.ay, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = shl i64 %i.ah, 32
  %sext = add i64 %i.az, -4294967296
  %i.ba = ashr exact i64 %sext, 29
  %i.bb = getelementptr inbounds i8, ptr %.sroa.35394.0.copyload, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !80
  %i.bd = fcmp une double %i.bc, 1.800000e+02
  br i1 %i.bd, label %.critedge, label %bb.ah

.critedge:                                        ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(66) @.str, i8 noundef zeroext 2)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  invoke void @_ZNKSt10filesystem7__cxx114path6stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.be = load ptr, ptr %15, align 8, !tbaa !33
  %i.bf = load double, ptr %.sroa.35394.0.copyload, align 8, !tbaa !80
  %sext663 = shl i64 %i.ah, 32
  %i.bg = ashr exact i64 %sext663, 29
  %i.bh = getelementptr i8, ptr %.sroa.35394.0.copyload, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !80
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 611, ptr noundef nonnull @.str.23, ptr noundef %i.be, double noundef %., double noundef 1.800000e+02, double noundef %i.bf, double noundef %i.bj) #25
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %.critedge
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ae:                                            ; preds = %bb.aa
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.af:                                            ; preds = %bb.ab
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %15, align 8, !tbaa !33   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.af
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !34
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.ae ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %i.bm, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #24
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196 ], [ %i.bk, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %.body

bb.ah:                                            ; preds = %bb.z, %bb.p
  %i.bs = phi double [ %i.ax, %bb.z ], [ %i.ak, %bb.p ]
  %i.bt = add i32 %i.ai, -1                       ; 3 uses
  %i.bu = sitofp i32 %i.bt to double
  %i.bv = sext i32 %i.bt to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !80
  %i.by = fsub double %i.bx, %i.bs
  %i.bz = fdiv double %i.bu, %i.by                ; 4 uses
  store double %i.bz, ptr %i.g, align 8, !tbaa !80
  %i.ca = icmp ne ptr %1, null                    ; 4 uses
  br i1 %i.ca, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.cb = load ptr, ptr %7, align 8, !tbaa !33, !noalias !187 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !35, !noalias !187 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.ce, ptr %16, align 8, !tbaa !29, !alias.scope !187
  %i.cf = icmp eq ptr %i.cb, null
  %i.cg = icmp ne i64 %i.cd, 0
  %or.cond.i.i.i = and i1 %i.cf, %i.cg
  br i1 %or.cond.i.i.i, label %.noexc.i, label %bb.aj

.noexc.i:                                         ; preds = %bb.ai
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !187
  store i64 %i.cd, ptr %i.c, align 8, !tbaa !31, !noalias !187
  %i.ch = icmp ugt i64 %i.cd, 15
  br i1 %i.ch, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.aj
  %i.ci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc199 unwind label %bb.ao ; 2 uses

.noexc199:                                        ; preds = %.noexc.i.i.i
  store ptr %i.ci, ptr %16, align 8, !tbaa !33, !alias.scope !187
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !31, !noalias !187
  store i64 %i.cj, ptr %i.ce, align 8, !tbaa !34, !alias.scope !187
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc199, %bb.aj
  %i.ck = phi ptr [ %i.ci, %.noexc199 ], [ %i.ce, %bb.aj ] ; 2 uses
  switch i64 %i.cd, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  %i.cl = load i8, ptr %i.cb, align 1, !tbaa !34
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !34
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZL11read_tablesP8_IO_FILEPKcii:bb.a
.noexc230:                                        ; preds = %.noexc.i229
  unreachable

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !191
  store i64 %i.pj, ptr %i.b, align 8, !tbaa !31, !noalias !191
  %i.pm = icmp ugt i64 %i.pj, 15
  br i1 %i.pm, label %.noexc.i.i.i228, label %._crit_edge.i.i.i.i227

.noexc.i.i.i228:                                  ; preds = %bb.cr
  %i.pn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc231 unwind label %.loopexit ; 2 uses

.noexc231:                                        ; preds = %.noexc.i.i.i228
  store ptr %i.pn, ptr %20, align 8, !tbaa !33, !alias.scope !191
  %i.po = load i64, ptr %i.b, align 8, !tbaa !31, !noalias !191
  store i64 %i.po, ptr %i.db, align 8, !tbaa !34, !alias.scope !191
  br label %._crit_edge.i.i.i.i227

._crit_edge.i.i.i.i227:                           ; preds = %.noexc231, %bb.cr
  %i.pp = phi ptr [ %i.pn, %.noexc231 ], [ %i.db, %bb.cr ] ; 2 uses
  switch i64 %i.pj, label %bb.ct [
    i64 1, label %bb.cs
    i64 0, label %bb.cu
  ]

bb.cs:                                            ; preds = %._crit_edge.i.i.i.i227
  %i.pq = load i8, ptr %i.pi, align 1, !tbaa !34
  store i8 %i.pq, ptr %i.pp, align 1, !tbaa !34
  br label %bb.cu

bb.ct:                                            ; preds = %._crit_edge.i.i.i.i227
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pp, ptr align 1 %i.pi, i64 %i.pj, i1 false)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %._crit_edge.i.i.i.i227
  %i.pr = load i64, ptr %i.b, align 8, !tbaa !31, !noalias !191 ; 2 uses
  store i64 %i.pr, ptr %i.dc, align 8, !tbaa !35, !alias.scope !191
  %i.ps = load ptr, ptr %20, align 8, !tbaa !33, !alias.scope !191
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pr
  store i8 0, ptr %i.pt, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !191
  %i.pu = load ptr, ptr %20, align 8, !tbaa !33
  %i.pv = fmul double %i.ph, 1.000000e+02
  %i.pw = call double @llvm.rint.f64(double %i.pv)
  %i.px = fptosi double %i.pw to i64
  %i.py = trunc nuw nsw i64 %indvars.iv601 to i32
  %i.pz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %.1143, i32 noundef %i.py, ptr noundef %i.pu, i64 noundef %i.px) #24 ; 0 uses
  %i.qa = load ptr, ptr %20, align 8, !tbaa !33   ; 2 uses
  %i.qb = icmp eq ptr %i.qa, %i.db
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.cu
  %i.qc = load i64, ptr %i.db, align 8, !tbaa !34
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.qe = load ptr, ptr @debug, align 8, !tbaa !66 ; 2 uses
  %.not169 = icmp eq ptr %i.qe, null
  br i1 %.not169, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %fputs = call i32 @fputs(ptr nonnull %i.e, ptr nonnull %i.qe) ; 0 uses
  br label %bb.cx

.loopexit:                                        ; preds = %.noexc.i.i.i228
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i32 %storemerge167498.lcssa, ptr %i.f, align 4
  br label %bb.cw

.loopexit.split-lp:                               ; preds = %.noexc.i229
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %.body

bb.cx:                                            ; preds = %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %i.qf = fcmp ogt double %i.ph, 2.000000e-01
  br i1 %i.qf, label %bb.cy, label %._crit_edge518.thread

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.ca, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.qg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.e) #24 ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.qh = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.qi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qh, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.e) #30 ; 0 uses
  br label %._crit_edge518.thread

._crit_edge518.thread:                            ; preds = %.preheader456, %.preheader, %.loopexit840, %bb.cx, %bb.da, %._crit_edge518
  %.1137.lcssa670 = phi i8 [ %.5141.lcssa, %.loopexit840 ], [ %.5141.lcssa, %bb.cx ], [ %.5141.lcssa, %bb.da ], [ %.5141.lcssa, %._crit_edge518 ], [ %.5141.lcssa, %.preheader ], [ %.0136534, %.preheader456 ] ; 2 uses
  %storemerge167502.lcssa668 = phi i32 [ %storemerge167498.lcssa, %.loopexit840 ], [ %storemerge167498.lcssa, %bb.cx ], [ %storemerge167498.lcssa, %bb.da ], [ %storemerge167498.lcssa, %._crit_edge518 ], [ %storemerge167498.lcssa, %.preheader ], [ %storemerge167502.lcssa523531, %.preheader456 ] ; 2 uses
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601, 1 ; 2 uses
  %exitcond604.not = icmp eq i64 %indvars.iv.next602, %wide.trip.count603
  br i1 %exitcond604.not, label %bb.db, label %.preheader456, !llvm.loop !176

bb.db:                                            ; preds = %._crit_edge518.thread
  store i32 %storemerge167502.lcssa668, ptr %i.f, align 4
  %i.qj = trunc nuw i8 %.1137.lcssa670 to i1
  %or.cond11 = and i1 %i.ca, %i.qj
  br i1 %or.cond11, label %bb.dc, label %bb.di

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.qk = load ptr, ptr %7, align 8, !tbaa !33, !noalias !194 ; 3 uses
  %i.ql = load i64, ptr %i.da, align 8, !tbaa !35, !noalias !194 ; 5 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.qm, ptr %21, align 8, !tbaa !29, !alias.scope !194
  %i.qn = icmp eq ptr %i.qk, null
  %i.qo = icmp ne i64 %i.ql, 0
  %or.cond.i.i.i236 = and i1 %i.qn, %i.qo
  br i1 %or.cond.i.i.i236, label %.noexc.i239, label %bb.dd

.noexc.i239:                                      ; preds = %bb.dc
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc240 unwind label %bb.dh

.noexc240:                                        ; preds = %.noexc.i239
  unreachable

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !194
  store i64 %i.ql, ptr %i.a, align 8, !tbaa !31, !noalias !194
  %i.qp = icmp ugt i64 %i.ql, 15
  br i1 %i.qp, label %.noexc.i.i.i238, label %._crit_edge.i.i.i.i237

.noexc.i.i.i238:                                  ; preds = %bb.dd
  %i.qq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc241 unwind label %bb.dh ; 2 uses

.noexc241:                                        ; preds = %.noexc.i.i.i238
  store ptr %i.qq, ptr %21, align 8, !tbaa !33, !alias.scope !194
  %i.qr = load i64, ptr %i.a, align 8, !tbaa !31, !noalias !194
  store i64 %i.qr, ptr %i.qm, align 8, !tbaa !34, !alias.scope !194
  br label %._crit_edge.i.i.i.i237

._crit_edge.i.i.i.i237:                           ; preds = %.noexc241, %bb.dd
  %i.qs = phi ptr [ %i.qq, %.noexc241 ], [ %i.qm, %bb.dd ] ; 2 uses
  switch i64 %i.ql, label %bb.df [
    i64 1, label %bb.de
    i64 0, label %bb.dg
  ]

bb.de:                                            ; preds = %._crit_edge.i.i.i.i237
  %i.qt = load i8, ptr %i.qk, align 1, !tbaa !34
  store i8 %i.qt, ptr %i.qs, align 1, !tbaa !34
  br label %bb.dg

bb.df:                                            ; preds = %._crit_edge.i.i.i.i237
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qs, ptr align 1 %i.qk, i64 %i.ql, i1 false)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %._crit_edge.i.i.i.i237
  %i.qu = load i64, ptr %i.a, align 8, !tbaa !31, !noalias !194 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.qu, ptr %i.qv, align 8, !tbaa !35, !alias.scope !194
  %i.qw = load ptr, ptr %21, align 8, !tbaa !33, !alias.scope !194
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qu
  store i8 0, ptr %i.qx, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !194
  %i.qy = load ptr, ptr %21, align 8, !tbaa !33
  %i.qz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, ptr noundef %i.qy) #24 ; 0 uses
  %i.ra = load ptr, ptr %21, align 8, !tbaa !33   ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.qm
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %bb.dg
  %i.rc = load i64, ptr %i.qm, align 8, !tbaa !34
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.di

bb.dh:                                            ; preds = %.noexc.i.i.i238, %.noexc.i239
  %i.re = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %.body

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %bb.db
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rh = sub i64 0, %.sroa.35394.0.copyload803   ; 2 uses
  %22 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %23 = shufflevector <2 x i64> %22, <2 x i64> poison, <2 x i32> zeroinitializer
  %24 = shl <2 x i64> %23, <i64 4, i64 3>         ; 3 uses
  %25 = extractelement <2 x i64> %24, i64 0       ; 2 uses
  %i.ri = sub i64 %i.rh, %25
  %i.rj = mul i64 %i.ah, -16
  %26 = extractelement <2 x i64> %24, i64 1
  %i.rk = sub i64 %i.rh, %26
  %27 = insertelement <2 x i64> poison, i64 %.sroa.35394.0.copyload803, i64 0
  %i.rl = insertelement <8 x i64> poison, i64 %.sroa.35394.0.copyload803, i64 1
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %._crit_edge537
  %i.rm = phi i32 [ %i.ai, %bb.di ], [ %i.rt, %._crit_edge537 ]
  %indvars.iv610 = phi i64 [ 0, %bb.di ], [ %indvars.iv.next611, %._crit_edge537 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i8 1, ptr %i.i, align 1, !tbaa !101
  %i.rn = load ptr, ptr %i.rf, align 8, !tbaa !96 ; 3 uses
  %i.ro = load ptr, ptr %i.rg, align 8, !tbaa !97
  %.not.i246 = icmp eq ptr %i.rn, %i.ro
  br i1 %.not.i246, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.rp = load i32, ptr %i.f, align 4, !tbaa !83
  %i.rq = load double, ptr %i.g, align 8, !tbaa !80
  invoke void @_ZN11t_tabledataC1Eiidb(ptr noundef nonnull align 8 dereferenceable(88) %i.rn, i32 noundef %i.rm, i32 noundef %i.rp, double noundef %i.rq, i1 noundef zeroext true)
          to label %.noexc247 unwind label %bb.dm

.noexc247:                                        ; preds = %bb.dk
  %i.rr = load ptr, ptr %i.rf, align 8, !tbaa !96
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 88
  store ptr %i.rs, ptr %i.rf, align 8, !tbaa !96
  br label %_ZNSt6vectorI11t_tabledataSaIS0_EE12emplace_backIJRiS4_RdbEEERS0_DpOT_.exit

bb.dl:                                            ; preds = %bb.dj
  invoke void @_ZNSt6vectorI11t_tabledataSaIS0_EE17_M_realloc_insertIJRiS4_RdbEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.rn, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.i)
          to label %_ZNSt6vectorI11t_tabledataSaIS0_EE12emplace_backIJRiS4_RdbEEERS0_DpOT_.exit unwind label %bb.dm

_ZNSt6vectorI11t_tabledataSaIS0_EE12emplace_backIJRiS4_RdbEEERS0_DpOT_.exit: ; preds = %bb.dl, %.noexc247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  %i.rt = load i32, ptr %i.h, align 4, !tbaa !83  ; 4 uses
  %i.ru = icmp sgt i32 %i.rt, 0
  br i1 %i.ru, label %.lr.ph536, label %._crit_edge537

.lr.ph536:                                        ; preds = %_ZNSt6vectorI11t_tabledataSaIS0_EE12emplace_backIJRiS4_RdbEEERS0_DpOT_.exit
  %i.rv = load ptr, ptr %0, align 8, !tbaa !95
  %i.rw = getelementptr inbounds nuw [88 x i8], ptr %i.rv, i64 %indvars.iv610 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !78 ; 7 uses
  %i.rz = shl nuw nsw i64 %indvars.iv610, 1       ; 2 uses
  %i.sa = or disjoint i64 %i.rz, 1
  %i.sb = mul nsw i64 %i.ah, %i.sa
  %i.sc = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.sb ; 6 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rw, i64 40
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !78 ; 7 uses
  %i.sf = add nuw nsw i64 %i.rz, 2
  %i.sg = mul nsw i64 %i.ah, %i.sf
  %i.sh = getelementptr inbounds [8 x i8], ptr %.sroa.35394.0.copyload, i64 %i.sg ; 6 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.rw, i64 64
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !78 ; 7 uses
  %wide.trip.count608 = zext nneg i32 %i.rt to i64 ; 5 uses
  %min.iters.check804 = icmp ult i32 %i.rt, 32
  br i1 %min.iters.check804, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph536
  %i.sk = ptrtoaddr ptr %i.sj to i64              ; 4 uses
  %i.sl = ptrtoaddr ptr %i.se to i64              ; 3 uses
  %i.sm = ptrtoaddr ptr %i.ry to i64
  %28 = mul i64 %indvars.iv610, %25
  %i.sn = mul i64 %indvars.iv610, %i.rj           ; 2 uses
  %29 = add i64 %i.rk, %i.sn                      ; 2 uses
  %i.so = add i64 %29, %i.sl
  %i.sp = add i64 %i.so, -1
  %diff.check816 = icmp ult i64 %i.sp, 63
  %30 = insertelement <2 x i64> poison, i64 %28, i64 0
  %31 = add <2 x i64> %30, %27
  %32 = shufflevector <2 x i64> %31, <2 x i64> poison, <2 x i32> zeroinitializer
  %33 = add <2 x i64> %32, %24
  %34 = insertelement <8 x i64> %i.rl, i64 %i.sm, i64 0
  %i.sq = insertelement <8 x i64> %34, i64 %i.sl, i64 2 ; 2 uses
  %35 = shufflevector <8 x i64> %i.sq, <8 x i64> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 1>
  %36 = shufflevector <2 x i64> %33, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %37 = shufflevector <8 x i64> %i.sq, <8 x i64> %36, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 8, i32 2>
  %i.sr = insertelement <8 x i64> %37, i64 %i.sl, i64 0
  %i.ss = insertelement <8 x i64> %i.sr, i64 %i.sk, i64 1
  %38 = shufflevector <8 x i64> %i.ss, <8 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 4, i32 1, i32 6, i32 7>
  %39 = shufflevector <8 x i64> %38, <8 x i64> %36, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %40 = sub <8 x i64> %35, %39
  %41 = icmp ugt <8 x i64> %40, splat (i64 -64)
  %42 = add i64 %i.ri, %i.sn
  %i.st = add i64 %42, %i.sk
  %i.su = add i64 %i.st, -1
  %diff.check820.a = icmp ult i64 %i.su, 63
  %i.sv = add i64 %29, %i.sk
  %i.sw = add i64 %i.sv, -1
  %diff.check822 = icmp ult i64 %i.sw, 63
  %43 = sub i64 %.sroa.35394.0.copyload803, %i.sk
  %diff.check824 = icmp ugt i64 %43, -64
  %i.sx = bitcast <8 x i1> %41 to i8
  %i.sy = icmp ne i8 %i.sx, 0
  %op.rdx = or i1 %i.sy, %diff.check824
  %op.rdx843 = or i1 %diff.check816, %diff.check820.a
  %op.rdx844 = or i1 %op.rdx, %op.rdx843
  %op.rdx845 = or i1 %op.rdx844, %diff.check822
  br i1 %op.rdx845, label %scalar.ph.preheader, label %vector.ph826

vector.ph826:                                     ; preds = %vector.memcheck
  %n.vec827 = and i64 %wide.trip.count608, 2147483640 ; 3 uses
  br label %vector.body828

vector.body828:                                   ; preds = %vector.body828, %vector.ph826
  %index829 = phi i64 [ 0, %vector.ph826 ], [ %index.next836, %vector.body828 ] ; 7 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.35394.0.copyload, i64 %index829 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  %wide.load830 = load <4 x double>, ptr %i.sz, align 8, !tbaa !80
  %wide.load831 = load <4 x double>, ptr %i.ta, align 8, !tbaa !80
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %index829 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 32
  store <4 x double> %wide.load830, ptr %i.tb, align 8, !tbaa !80
  store <4 x double> %wide.load831, ptr %i.tc, align 8, !tbaa !80
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %index829 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 32
  %wide.load832 = load <4 x double>, ptr %i.td, align 8, !tbaa !80
  %wide.load833 = load <4 x double>, ptr %i.te, align 8, !tbaa !80
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %index829 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 32
  store <4 x double> %wide.load832, ptr %i.tf, align 8, !tbaa !80
  store <4 x double> %wide.load833, ptr %i.tg, align 8, !tbaa !80
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %index829 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 32
  %wide.load834 = load <4 x double>, ptr %i.th, align 8, !tbaa !80
  %wide.load835 = load <4 x double>, ptr %i.ti, align 8, !tbaa !80
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %index829 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 32
  store <4 x double> %wide.load834, ptr %i.tj, align 8, !tbaa !80
  store <4 x double> %wide.load835, ptr %i.tk, align 8, !tbaa !80
  %index.next836 = add nuw i64 %index829, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next836, %n.vec827
  br i1 %i.tl, label %middle.block837, label %vector.body828, !llvm.loop !181

middle.block837:                                  ; preds = %vector.body828
  %cmp.n838 = icmp eq i64 %n.vec827, %wide.trip.count608
  br i1 %cmp.n838, label %._crit_edge537, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph536, %middle.block837
  %indvars.iv605.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph536 ], [ %n.vec827, %middle.block837 ] ; 3 uses
  %xtraiter898 = and i64 %wide.trip.count608, 3   ; 2 uses
  %lcmp.mod899.not = icmp eq i64 %xtraiter898, 0
  br i1 %lcmp.mod899.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv605.prol = phi i64 [ %indvars.iv.next606.prol, %scalar.ph.prol ], [ %indvars.iv605.ph, %scalar.ph.preheader ] ; 7 uses
  %prol.iter900 = phi i64 [ %prol.iter900.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.35394.0.copyload, i64 %indvars.iv605.prol
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !80
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv605.prol
  store double %i.tn, ptr %i.to, align 8, !tbaa !80
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv605.prol
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !80
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %indvars.iv605.prol
  store double %i.tq, ptr %i.tr, align 8, !tbaa !80
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv605.prol
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !80
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv605.prol
  store double %i.tt, ptr %i.tu, align 8, !tbaa !80
  %indvars.iv.next606.prol = add nuw nsw i64 %indvars.iv605.prol, 1 ; 2 uses
  %prol.iter900.next = add i64 %prol.iter900, 1   ; 2 uses
  %prol.iter900.cmp.not = icmp eq i64 %prol.iter900.next, %xtraiter898
  br i1 %prol.iter900.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !182

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv605.unr = phi i64 [ %indvars.iv605.ph, %scalar.ph.preheader ], [ %indvars.iv.next606.prol, %scalar.ph.prol ]
  %i.tv = sub nsw i64 %indvars.iv605.ph, %wide.trip.count608
  %i.tw = icmp ugt i64 %i.tv, -4
  br i1 %i.tw, label %._crit_edge537, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv605 = phi i64 [ %indvars.iv.next606.3, %scalar.ph ], [ %indvars.iv605.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.35394.0.copyload, i64 %indvars.iv605
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !80
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv605
  store double %i.ty, ptr %i.tz, align 8, !tbaa !80
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv605
  %i.ub = load double, ptr %i.ua, align 8, !tbaa !80
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %indvars.iv605
  store double %i.ub, ptr %i.uc, align 8, !tbaa !80
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv605
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !80
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv605
  store double %i.ue, ptr %i.uf, align 8, !tbaa !80
  %indvars.iv.next606 = add nuw nsw i64 %indvars.iv605, 1 ; 6 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %.sroa.35394.0.copyload, i64 %indvars.iv.next606
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !80
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv.next606
  store double %i.uh, ptr %i.ui, align 8, !tbaa !80
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.next606
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !80
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %indvars.iv.next606
  store double %i.uk, ptr %i.ul, align 8, !tbaa !80
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv.next606
  %i.un = load double, ptr %i.um, align 8, !tbaa !80
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next606
  store double %i.un, ptr %i.uo, align 8, !tbaa !80
  %indvars.iv.next606.1 = add nuw nsw i64 %indvars.iv605, 2 ; 6 uses
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %.sroa.35394.0.copyload, i64 %indvars.iv.next606.1
  %i.uq = load double, ptr %i.up, align 8, !tbaa !80
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv.next606.1
  store double %i.uq, ptr %i.ur, align 8, !tbaa !80
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.next606.1
  %i.ut = load double, ptr %i.us, align 8, !tbaa !80
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %indvars.iv.next606.1
  store double %i.ut, ptr %i.uu, align 8, !tbaa !80
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv.next606.1
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !80
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next606.1
  store double %i.uw, ptr %i.ux, align 8, !tbaa !80
  %indvars.iv.next606.2 = add nuw nsw i64 %indvars.iv605, 3 ; 6 uses
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.35394.0.copyload, i64 %indvars.iv.next606.2
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !80
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %indvars.iv.next606.2
  store double %i.uz, ptr %i.va, align 8, !tbaa !80
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.next606.2
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !80
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %indvars.iv.next606.2
  store double %i.vc, ptr %i.vd, align 8, !tbaa !80
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv.next606.2
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !80
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %indvars.iv.next606.2
  store double %i.vf, ptr %i.vg, align 8, !tbaa !80
  %indvars.iv.next606.3 = add nuw nsw i64 %indvars.iv605, 4 ; 2 uses
  %exitcond609.not.3 = icmp eq i64 %indvars.iv.next606.3, %wide.trip.count608
  br i1 %exitcond609.not.3, label %._crit_edge537, label %scalar.ph, !llvm.loop !183

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.vh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @_ZNSt6vectorI11t_tabledataSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  br label %.body

._crit_edge537:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block837, %_ZNSt6vectorI11t_tabledataSaIS0_EE12emplace_backIJRiS4_RdbEEERS0_DpOT_.exit
  %indvars.iv.next611 = add nuw nsw i64 %indvars.iv610, 1 ; 2 uses
  %exitcond614.not = icmp eq i64 %indvars.iv.next611, %wide.trip.count603
  br i1 %exitcond614.not, label %bb.dn, label %bb.dj, !llvm.loop !184

bb.dn:                                            ; preds = %._crit_edge537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.vi = load ptr, ptr %9, align 8, !tbaa !78    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.vi, null
  br i1 %.not.i.i.i.i, label %_ZN3gmx13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEED2Ev.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.vj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !79
  %i.vl = ptrtoint ptr %i.vk to i64
  %i.vm = ptrtoint ptr %i.vi to i64
  %i.vn = sub i64 %i.vl, %i.vm
  call void @_ZdlPvm(ptr noundef nonnull %i.vi, i64 noundef %i.vn) #26
  br label %_ZN3gmx13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEED2Ev.exit

_ZN3gmx13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEED2Ev.exit: ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.vo = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i252 = icmp eq ptr %i.vp, null
  br i1 %.not.i.i.i252, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i253, label %bb.dp

bb.dp:                                            ; preds = %_ZN3gmx13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEED2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.vo, ptr noundef nonnull %i.vp) #24
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i253

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i253: ; preds = %bb.dp, %_ZN3gmx13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEED2Ev.exit
  %i.vq = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i254: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i253
  %i.vt = load i64, ptr %i.vr, align 8, !tbaa !34
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vu) #26
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit256

_ZNSt10filesystem7__cxx114pathD2Ev.exit256:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  ret void

.body:                                            ; preds = %.loopexit457, %.loopexit.split-lp458, %bb.cd, %bb.bw, %bb.dm, %bb.dh, %bb.cw, %bb.br, %bb.bk, %bb.bd, %bb.ao, %bb.ag, %bb.x
  %.pn176.pn.pn = phi { ptr, i32 } [ %.pn176.pn, %bb.x ], [ %.pn174, %bb.bd ], [ %.pn172, %bb.bk ], [ %.pn170, %bb.br ], [ %.pn.pn, %bb.ag ], [ %lpad.phi, %bb.cw ], [ %i.vh, %bb.dm ], [ %i.re, %bb.dh ], [ %i.cx, %bb.ao ], [ %i.hs, %bb.cd ], [ %i.gs, %bb.bw ], [ %lpad.loopexit459, %.loopexit457 ], [ %lpad.loopexit.split-lp460, %.loopexit.split-lp458 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %bb.dq

bb.dq:                                            ; preds = %.body, %bb.n
  %.pn180.pn.pn = phi { ptr, i32 } [ %.pn180.pn, %bb.n ], [ %.pn176.pn.pn, %.body ] ; 2 uses
  %i.vv = load ptr, ptr %9, align 8, !tbaa !78    ; 3 uses
  %.not.i.i.i.i257 = icmp eq ptr %i.vv, null
  br i1 %.not.i.i.i.i257, label %_ZN3gmx13MultiDimArrayISt6vectorIdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEED2Ev.exit258, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !79
end_hunk_1
