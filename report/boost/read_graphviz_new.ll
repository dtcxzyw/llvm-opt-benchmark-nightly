Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read_graphviz_new?download=true
inline.NumInlined: 6920
inline.NumDeleted: 2274
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNK5boost16cpp_regex_traitsIcE3toiERPKcS3_i:bb.a
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPcl.exit unwind label %bb.o, !inline_history !884 ; 0 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPcl.exit: ; preds = %_ZSt4findIPKccET_S2_S2_RKT0_.exit
  %i.bq = load ptr, ptr %5, align 8, !tbaa !62
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %5, i64 %i.bs
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bt, i32 noundef 0)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPcl.exit
  %i.bu = call i32 @llvm.abs.i32(i32 %3, i1 true) ; 2 uses
  %i.bv = load ptr, ptr %5, align 8, !tbaa !62
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %5, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !888
  %i.cb = and i32 %i.ca, -75
  %switch.selectcmp = icmp eq i32 %i.bu, 8
  %switch.select = select i1 %switch.selectcmp, i32 64, i32 2
  %switch.selectcmp58 = icmp eq i32 %i.bu, 16
  %switch.select59 = select i1 %switch.selectcmp58, i32 8, i32 %switch.select
  %i.cc = or disjoint i32 %i.cb, %switch.select59
  store i32 %i.cc, ptr %i.bz, align 8, !tbaa !889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.cd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.p unwind label %bb.s       ; 2 uses

bb.n:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit, %bb.c
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.u

bb.o:                                             ; preds = %_ZSt4findIPKccET_S2_S2_RKT0_.exit, %_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPcl.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !62
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !364
  %i.cm = and i32 %i.cl, 5
  %.not.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %1, align 8, !tbaa !204   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !366
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !367
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %.not.i27 = icmp eq i64 %i.cu, 0
  br i1 %.not.i27, label %bb.r, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %4, align 8, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef i64 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit unwind label %bb.s, !inline_history !885

_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit: ; preds = %bb.q, %bb.r
  %i.cz = phi i64 [ %i.cu, %bb.q ], [ %i.cy, %bb.r ]
  %i.da = ptrtoint ptr %i.cn to i64
  %i.db = add i64 %i.cz, %i.da
  %i.dc = sub i64 %i.bj, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.cn, i64 %i.dc
  store ptr %i.dd, ptr %1, align 8, !tbaa !204
  %i.de = load i64, ptr %i.a, align 8, !tbaa !63
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.m
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.u

bb.t:                                             ; preds = %bb.p, %_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit
  %.015 = phi i64 [ %i.de, %_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit ], [ -1, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.dg = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.dg, ptr %5, align 8, !tbaa !62
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.di = getelementptr i8, ptr %i.dg, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr %5, i64 %i.dj
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !62
  store i64 0, ptr %i.i, align 8, !tbaa !887
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %4, align 8, !tbaa !62
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i64 %.015

bb.u:                                             ; preds = %bb.s, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.df, %bb.s ], [ %i.cf, %bb.o ], [ %i.ce, %bb.n ]
  %i.dl = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.dl, ptr %5, align 8, !tbaa !62
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.dn = getelementptr i8, ptr %i.dl, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %5, i64 %i.do
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !62
  store i64 0, ptr %i.i, align 8, !tbaa !887
  br label %.body

.body:                                            ; preds = %bb.b, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.l, %bb.b ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %4, align 8, !tbaa !62
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60020named_subexpressions8set_nameIcEEvPKT_S5_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not9.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i, label %_ZN5boost13re_detail_60020named_subexpressions4nameC2IcEEPKT_S6_i.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.d = add i64 %i.a, -1
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.011.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.v, %.lr.ph.i.i ] ; 3 uses
  %.0810.i.i = phi ptr [ %1, %.lr.ph.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.f = load i8, ptr %.0810.i.i, align 1, !tbaa !60
  %i.g = sext i8 %i.f to i64
  %i.h = shl i64 %.011.i.i, 6
  %i.i = lshr i64 %.011.i.i, 2
  %i.j = add i64 %i.h, 2654435769
  %i.k = add i64 %i.j, %i.i
  %i.l = add i64 %i.k, %i.g
  %i.m = xor i64 %i.l, %.011.i.i                  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !60
  %i.p = sext i8 %i.o to i64
  %i.q = shl i64 %i.m, 6
  %i.r = lshr i64 %i.m, 2
  %i.s = add i64 %i.q, 2654435769
  %i.t = add i64 %i.s, %i.r
  %i.u = add i64 %i.t, %i.p
  %i.v = xor i64 %i.u, %i.m                       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !19

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.v, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 3 uses
  %.0810.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.w, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod29 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.x = load i8, ptr %.0810.i.i.epil.init, align 1, !tbaa !60
  %i.y = sext i8 %i.x to i64
  %i.z = shl i64 %.011.i.i.epil.init, 6
  %i.aa = lshr i64 %.011.i.i.epil.init, 2
  %i.ab = add i64 %i.z, 2654435769
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = add i64 %i.ac, %i.y
  %i.ae = xor i64 %i.ad, %.011.i.i.epil.init
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa27 = phi i64 [ %i.v, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.ae, %.lr.ph.i.i.epil.preheader ]
  %i.af = urem i64 %.lcssa27, 2147483647
  %i.ag = shl nuw nsw i64 %i.af, 32
  %i.ah = or i64 %i.ag, 4611686018427387904
  br label %_ZN5boost13re_detail_60020named_subexpressions4nameC2IcEEPKT_S6_i.exit

_ZN5boost13re_detail_60020named_subexpressions4nameC2IcEEPKT_S6_i.exit: ; preds = %bb.a, %._crit_edge.loopexit.i.i
  %.0.lcssa.i.i = phi i64 [ 4611686018427387904, %bb.a ], [ %i.ah, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !895 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !176
  %.not.i.i4 = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost13re_detail_60020named_subexpressions4nameC2IcEEPKT_S6_i.exit
  %.sroa.0.0.insert.ext = zext i32 %3 to i64
  %.sroa.0.0.insert.insert = or i64 %.0.lcssa.i.i, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.aj, align 4, !tbaa !132
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !895
  %.pre = load ptr, ptr %0, align 8, !tbaa !368
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %_ZN5boost13re_detail_60020named_subexpressions4nameC2IcEEPKT_S6_i.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !175   ; 5 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.d, label %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #28
  unreachable

_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #32 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %.sroa.0.0.insert.ext6 = zext i32 %3 to i64
  %.sroa.0.0.insert.insert8 = or i64 %.0.lcssa.i.i, %.sroa.0.0.insert.ext6
  store i64 %.sroa.0.0.insert.insert8, ptr %i.az, align 4, !tbaa !132
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %i.ay, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %i.an, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.ba = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !132, !alias.scope !897, !noalias !896
  store i64 %i.ba, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !132, !alias.scope !896, !noalias !897
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.aj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !893

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ay, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !176
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.bg) #29
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ay, ptr %0, align 8, !tbaa !175
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !895
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bh, ptr %i.ak, align 8, !tbaa !176
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.bi = phi ptr [ %i.am, %bb.b ], [ %i.bd, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bj = phi ptr [ %.pre, %bb.b ], [ %i.ay, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i = icmp eq ptr %i.bj, %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  %.not1213.i = icmp eq ptr %i.bk, %i.bj
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1213.i
  br i1 %or.cond.i, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit, %bb.f
  %.sroa.02.014.i = phi ptr [ %i.bq, %bb.f ], [ %i.bk, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.014.i, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !370 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.02.014.i, i64 -4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !370 ; 2 uses
  %i.bp = icmp slt i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.f, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds i8, ptr %.sroa.02.014.i, i64 -8 ; 4 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !132
  %i.bs = load i32, ptr %.sroa.02.014.i, align 4, !tbaa !132
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !132
  store i32 %i.br, ptr %.sroa.02.014.i, align 4, !tbaa !132
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !132
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !132
  %.not12.i = icmp eq ptr %i.bq, %i.bj
  br i1 %.not12.i, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !894

_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit: ; preds = %.lr.ph.i, %bb.f, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13parse_optionsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !258    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !268
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %.promoted = load ptr, ptr %i.d, align 8, !tbaa !271
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.g = phi ptr [ %.promoted, %bb.a ], [ %i.n, %bb.g ] ; 5 uses
  %.014 = phi i32 [ %i.c, %bb.a ], [ %.115, %bb.g ] ; 6 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !60
  switch i8 %i.h, label %.thread41 [
    i8 115, label %bb.c
    i8 109, label %bb.d
    i8 105, label %bb.e
    i8 120, label %bb.f
    i8 45, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %.014, -12289
  %i.j = or disjoint i32 %i.i, 4096
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.k = and i32 %.014, -1025
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.l = or i32 %.014, 1048576
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.m = or i32 %.014, 2048
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.115 = phi i32 [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 3 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !271
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %.preheader46, label %bb.b

.preheader46:                                     ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !293, !nonnull !108, !align !109
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !201
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader46
  %storemerge = phi ptr [ %i.x, %bb.h ], [ %i.g, %.preheader46 ] ; 4 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !271
  %i.t = load i8, ptr %storemerge, align 1, !tbaa !60
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !60
  %.not = icmp eq i8 %i.w, 1
  %i.x = getelementptr inbounds i8, ptr %storemerge, i64 -1
  br i1 %.not, label %bb.i, label %bb.h, !llvm.loop !898

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !270
  %i.aa = ptrtoint ptr %storemerge to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !149
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !201, !noalias !907
  call void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIcE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(437) %i.af, i32 noundef 8)
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 8, i64 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %3, align 8, !tbaa !57    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !60
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #29
  br label %_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit

bb.k:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !57    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.k
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !60
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i
  %common.resume.op = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i27 ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i33 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.thread41

bb.l:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 3 uses
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !271
  %i.as = icmp eq ptr %i.ar, %i.f
  br i1 %i.as, label %.preheader, label %.preheader45

.preheader:                                       ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !293, !nonnull !108, !align !109
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !201
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader
  %storemerge24 = phi ptr [ %i.bb, %bb.m ], [ %i.g, %.preheader ] ; 4 uses
  store ptr %storemerge24, ptr %i.d, align 8, !tbaa !271
  %i.ax = load i8, ptr %storemerge24, align 1, !tbaa !60
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !60
  %.not25 = icmp eq i8 %i.ba, 1
end_hunk_0
