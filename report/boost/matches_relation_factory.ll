Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/matches_relation_factory?download=true
inline.NumInlined: 7984
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK5boost16cpp_regex_traitsIcE3toiERPKcS3_i:bb.a
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPcl.exit unwind label %bb.o, !inline_history !987 ; 0 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPcl.exit: ; preds = %_ZSt4findIPKccET_S2_S2_RKT0_.exit
  %i.bq = load ptr, ptr %5, align 8, !tbaa !102
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %5, i64 %i.bs
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bt, i32 noundef 0)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE9pubsetbufEPcl.exit
  %i.bu = call i32 @llvm.abs.i32(i32 %3, i1 true) ; 2 uses
  %i.bv = load ptr, ptr %5, align 8, !tbaa !102
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %5, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !340
  %i.cb = and i32 %i.ca, -75
  %switch.selectcmp = icmp eq i32 %i.bu, 8
  %switch.select = select i1 %switch.selectcmp, i32 64, i32 2
  %switch.selectcmp58 = icmp eq i32 %i.bu, 16
  %switch.select59 = select i1 %switch.selectcmp58, i32 8, i32 %switch.select
  %i.cc = or disjoint i32 %i.cb, %switch.select59
  store i32 %i.cc, ptr %i.bz, align 8, !tbaa !341
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
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !102
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !342
  %i.cm = and i32 %i.cl, 5
  %.not.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %1, align 8, !tbaa !184   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !344
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !345
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %.not.i27 = icmp eq i64 %i.cu, 0
  br i1 %.not.i27, label %bb.r, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %4, align 8, !tbaa !102
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef i64 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit unwind label %bb.s, !inline_history !988

_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit: ; preds = %bb.q, %bb.r
  %i.cz = phi i64 [ %i.cu, %bb.q ], [ %i.cy, %bb.r ]
  %i.da = ptrtoint ptr %i.cn to i64
  %i.db = add i64 %i.cz, %i.da
  %i.dc = sub i64 %i.bj, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.cn, i64 %i.dc
  store ptr %i.dd, ptr %1, align 8, !tbaa !184
  %i.de = load i64, ptr %i.a, align 8, !tbaa !81
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
  store ptr %i.dg, ptr %5, align 8, !tbaa !102
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.di = getelementptr i8, ptr %i.dg, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr %5, i64 %i.dj
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !102
  store i64 0, ptr %i.i, align 8, !tbaa !998
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %4, align 8, !tbaa !102
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i64 %.015

bb.u:                                             ; preds = %bb.s, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.df, %bb.s ], [ %i.cf, %bb.o ], [ %i.ce, %bb.n ]
  %i.dl = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.dl, ptr %5, align 8, !tbaa !102
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.dn = getelementptr i8, ptr %i.dl, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %5, i64 %i.do
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !102
  store i64 0, ptr %i.i, align 8, !tbaa !998
  br label %.body

.body:                                            ; preds = %bb.b, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.l, %bb.b ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %4, align 8, !tbaa !102
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60020named_subexpressions8set_nameIcEEvPKT_S5_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
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
  %i.f = load i8, ptr %.0810.i.i, align 1, !tbaa !84
  %i.g = sext i8 %i.f to i64
  %i.h = shl i64 %.011.i.i, 6
  %i.i = lshr i64 %.011.i.i, 2
  %i.j = add i64 %i.h, 2654435769
  %i.k = add i64 %i.j, %i.i
  %i.l = add i64 %i.k, %i.g
  %i.m = xor i64 %i.l, %.011.i.i                  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !84
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
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !21

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.v, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 3 uses
  %.0810.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.w, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod29 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.x = load i8, ptr %.0810.i.i.epil.init, align 1, !tbaa !84
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
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !346 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !142
  %.not.i.i4 = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost13re_detail_60020named_subexpressions4nameC2IcEEPKT_S6_i.exit
  %.sroa.0.0.insert.ext = zext i32 %3 to i64
  %.sroa.0.0.insert.insert = or i64 %.0.lcssa.i.i, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.aj, align 4
  %4 = load ptr, ptr %i.ai, align 8, !tbaa !346
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !346
  %.pre = load ptr, ptr %0, align 8, !tbaa !347
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %_ZN5boost13re_detail_60020named_subexpressions4nameC2IcEEPKT_S6_i.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !141   ; 5 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.d, label %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #29
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
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #30 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %.sroa.0.0.insert.ext6 = zext i32 %3 to i64
  %.sroa.0.0.insert.insert8 = or i64 %.0.lcssa.i.i, %.sroa.0.0.insert.ext6
  store i64 %.sroa.0.0.insert.insert8, ptr %i.az, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %i.ay, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %i.an, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.ba = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !1003, !noalias !1002
  store i64 %i.ba, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !1002, !noalias !1003
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.aj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !22

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ay, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !142
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.bg) #31
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ay, ptr %0, align 8, !tbaa !141
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !346
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bh, ptr %i.ak, align 8, !tbaa !142
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
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !349 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.02.014.i, i64 -4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !349 ; 2 uses
  %i.bp = icmp slt i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.f, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds i8, ptr %.sroa.02.014.i, i64 -8 ; 4 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !86
  %i.bs = load i32, ptr %.sroa.02.014.i, align 4, !tbaa !86
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !86
  store i32 %i.br, ptr %.sroa.02.014.i, align 4, !tbaa !86
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !86
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !86
  %.not12.i = icmp eq ptr %i.bq, %i.bj
  br i1 %.not12.i, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !23

_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit: ; preds = %.lr.ph.i, %bb.f, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13parse_optionsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !242    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !252
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %.promoted = load ptr, ptr %i.d, align 8, !tbaa !255
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.g = phi ptr [ %.promoted, %bb.a ], [ %i.n, %bb.g ] ; 5 uses
  %.014 = phi i32 [ %i.c, %bb.a ], [ %.115, %bb.g ] ; 6 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !84
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
  store ptr %i.n, ptr %i.d, align 8, !tbaa !255
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %.preheader46, label %bb.b

.preheader46:                                     ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !277, !nonnull !107, !align !108
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !181
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader46
  %storemerge = phi ptr [ %i.x, %bb.h ], [ %i.g, %.preheader46 ] ; 4 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !255
  %i.t = load i8, ptr %storemerge, align 1, !tbaa !84
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !84
  %.not = icmp eq i8 %i.w, 1
  %i.x = getelementptr inbounds i8, ptr %storemerge, i64 -1
  br i1 %.not, label %bb.i, label %bb.h, !llvm.loop !1004

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !254
  %i.aa = ptrtoint ptr %storemerge to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !114
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !181, !noalias !1013
  call void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIcE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(437) %i.af, i32 noundef 8)
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 8, i64 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !84
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #31
  br label %_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit

bb.k:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.k
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !84
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #31
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
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !255
  %i.as = icmp eq ptr %i.ar, %i.f
  br i1 %i.as, label %.preheader, label %.preheader45

.preheader:                                       ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !277, !nonnull !107, !align !108
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !181
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader
  %storemerge24 = phi ptr [ %i.bb, %bb.m ], [ %i.g, %.preheader ] ; 4 uses
  store ptr %storemerge24, ptr %i.d, align 8, !tbaa !255
  %i.ax = load i8, ptr %storemerge24, align 1, !tbaa !84
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !84
  %.not25 = icmp eq i8 %i.ba, 1
end_hunk_0
begin_hunk_1_@_ZNK5boost16cpp_regex_traitsIwE3toiERPKwS3_i:bb.a

bb.k:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.k
  %.2.i.i.i = phi ptr [ %i.bc, %bb.k ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bd = load i32, ptr %.2.i.i.i, align 4, !tbaa !388
  %i.be = icmp eq i32 %i.bd, %i.ab
  br i1 %i.be, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i
  br label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit

_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 12
  br label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit

_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit48: ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  br label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit

_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit50: ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  br label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit

_ZSt4findIPKwwET_S2_S2_RKT0_.exit:                ; preds = %bb.d, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit48, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit50, %bb.l, %._crit_edge._crit_edge52.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.i
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %2, %bb.l ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %.029.lcssa.i.i.i, %bb.i ], [ %i.bh, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit50 ], [ %i.bf, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %i.bg, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit48 ], [ %.02946.i.i.i, %bb.d ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bi = load ptr, ptr %1, align 8, !tbaa !496   ; 2 uses
  %i.bj = ptrtoint ptr %.028.i.i.i to i64         ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  %i.bn = load ptr, ptr %4, align 8, !tbaa !102
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.bi, i64 noundef %i.bm)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwl.exit unwind label %bb.o, !inline_history !1433 ; 0 uses

_ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwl.exit: ; preds = %_ZSt4findIPKwwET_S2_S2_RKT0_.exit
  %i.br = load ptr, ptr %5, align 8, !tbaa !102
  %i.bs = getelementptr i8, ptr %i.br, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %5, i64 %i.bt
  invoke void @_ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bu, i32 noundef 0)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwl.exit
  %i.bv = call i32 @llvm.abs.i32(i32 %3, i1 true) ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !102
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %5, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !340
  %i.cc = and i32 %i.cb, -75
  %switch.selectcmp = icmp eq i32 %i.bv, 8
  %switch.select = select i1 %switch.selectcmp, i32 64, i32 2
  %switch.selectcmp57 = icmp eq i32 %i.bv, 16
  %switch.select58 = select i1 %switch.selectcmp57, i32 8, i32 %switch.select
  %i.cd = or disjoint i32 %i.cc, %switch.select58
  store i32 %i.cd, ptr %i.ca, align 8, !tbaa !341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13basic_istreamIwSt11char_traitsIwEE10_M_extractIlEERS2_RT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.p unwind label %bb.t       ; 2 uses

bb.n:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIwEEERKT_RKSt6locale.exit, %bb.c
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.v

bb.o:                                             ; preds = %_ZSt4findIPKwwET_S2_S2_RKT0_.exit, %_ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwl.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.p:                                             ; preds = %bb.m
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !102
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !342
  %i.cn = and i32 %i.cm, 5
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.co = load ptr, ptr %1, align 8, !tbaa !496   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !499 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !500 ; 2 uses
  %.not.i27 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i27, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.cu, %i.ct
  %i.cw = ashr exact i64 %i.cv, 2
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv.exit

bb.s:                                             ; preds = %bb.q
  %i.cx = load ptr, ptr %4, align 8, !tbaa !102
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef i64 %i.cz(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv.exit unwind label %bb.t, !inline_history !1434

_ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv.exit: ; preds = %bb.r, %bb.s
  %i.db = phi i64 [ %i.cw, %bb.r ], [ %i.da, %bb.s ]
  %i.dc = ptrtoint ptr %i.co to i64
  %i.dd = sub i64 %i.bj, %i.dc
  %i.de = ashr exact i64 %i.dd, 2
  %i.df = sub nsw i64 %i.de, %i.db
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.df
  store ptr %i.dg, ptr %1, align 8, !tbaa !496
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !81
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.m
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.v

bb.u:                                             ; preds = %bb.p, %_ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv.exit
  %.015 = phi i64 [ %i.dh, %_ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv.exit ], [ -1, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.dj = load ptr, ptr @_ZTTSt13basic_istreamIwSt11char_traitsIwEE, align 8 ; 2 uses
  store ptr %i.dj, ptr %5, align 8, !tbaa !102
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt13basic_istreamIwSt11char_traitsIwEE, i64 8), align 8
  %i.dl = getelementptr i8, ptr %i.dj, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %5, i64 %i.dm
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !102
  store i64 0, ptr %i.i, align 8, !tbaa !1444
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIwSt11char_traitsIwEE, i64 16), ptr %4, align 8, !tbaa !102
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i64 %.015

bb.v:                                             ; preds = %bb.t, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.di, %bb.t ], [ %i.cg, %bb.o ], [ %i.cf, %bb.n ]
  %i.do = load ptr, ptr @_ZTTSt13basic_istreamIwSt11char_traitsIwEE, align 8 ; 2 uses
  store ptr %i.do, ptr %5, align 8, !tbaa !102
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt13basic_istreamIwSt11char_traitsIwEE, i64 8), align 8
  %i.dq = getelementptr i8, ptr %i.do, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %5, i64 %i.dr
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !102
  store i64 0, ptr %i.i, align 8, !tbaa !1444
  br label %.body

.body:                                            ; preds = %bb.b, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.l, %bb.b ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIwSt11char_traitsIwEE, i64 16), ptr %4, align 8, !tbaa !102
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60020named_subexpressions8set_nameIwEEvPKT_S5_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not9.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i, label %_ZN5boost13re_detail_60020named_subexpressions4nameC2IwEEPKT_S6_i.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.011.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ 0, %bb.a ] ; 3 uses
  %.0810.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %1, %bb.a ] ; 2 uses
  %i.a = load i32, ptr %.0810.i.i, align 4, !tbaa !388
  %i.b = add i32 %i.a, -1640531527
  %i.c = zext i32 %i.b to i64
  %i.d = shl i64 %.011.i.i, 6
  %i.e = lshr i64 %.011.i.i, 2
  %i.f = add i64 %i.e, %i.d
  %i.g = add i64 %i.f, %i.c
  %i.h = xor i64 %i.g, %.011.i.i                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %2
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !41

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.j = urem i64 %i.h, 2147483647
  %i.k = shl nuw nsw i64 %i.j, 32
  %i.l = or i64 %i.k, 4611686018427387904
  br label %_ZN5boost13re_detail_60020named_subexpressions4nameC2IwEEPKT_S6_i.exit

_ZN5boost13re_detail_60020named_subexpressions4nameC2IwEEPKT_S6_i.exit: ; preds = %bb.a, %._crit_edge.loopexit.i.i
  %.0.lcssa.i.i = phi i64 [ 4611686018427387904, %bb.a ], [ %i.l, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !346  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142
  %.not.i.i4 = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost13re_detail_60020named_subexpressions4nameC2IwEEPKT_S6_i.exit
  %.sroa.0.0.insert.ext = zext i32 %3 to i64
  %.sroa.0.0.insert.insert = or i64 %.0.lcssa.i.i, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.n, align 4
  %4 = load ptr, ptr %i.m, align 8, !tbaa !346
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.m, align 8, !tbaa !346
  %.pre = load ptr, ptr %0, align 8, !tbaa !347
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %_ZN5boost13re_detail_60020named_subexpressions4nameC2IwEEPKT_S6_i.exit
  %i.r = load ptr, ptr %0, align 8, !tbaa !141    ; 5 uses
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.d, label %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #29
  unreachable

_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #30 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %.sroa.0.0.insert.ext6 = zext i32 %3 to i64
  %.sroa.0.0.insert.insert8 = or i64 %.0.lcssa.i.i, %.sroa.0.0.insert.ext6
  store i64 %.sroa.0.0.insert.insert8, ptr %i.ad, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.r, %i.n
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  %i.ae = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !1449, !noalias !1448
  store i64 %i.ae, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !1448, !noalias !1449
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.n
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !22

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !142
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ak) #31
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !141
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !346
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.al, ptr %i.o, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.am = phi ptr [ %i.q, %bb.b ], [ %i.ah, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %i.an = phi ptr [ %.pre, %bb.b ], [ %i.ac, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i = icmp eq ptr %i.an, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  %.not1213.i = icmp eq ptr %i.ao, %i.an
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1213.i
  br i1 %or.cond.i, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit, %bb.f
  %.sroa.02.014.i = phi ptr [ %i.au, %bb.f ], [ %i.ao, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.02.014.i, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !349 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.02.014.i, i64 -4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !349 ; 2 uses
  %i.at = icmp slt i32 %i.aq, %i.as
  br i1 %i.at, label %bb.f, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds i8, ptr %.sroa.02.014.i, i64 -8 ; 4 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !86
  %i.aw = load i32, ptr %.sroa.02.014.i, align 4, !tbaa !86
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !86
  store i32 %i.av, ptr %.sroa.02.014.i, align 4, !tbaa !86
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !86
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !86
  %.not12.i = icmp eq ptr %i.au, %i.an
  br i1 %.not12.i, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !23

_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit: ; preds = %.lr.ph.i, %bb.f, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE13parse_optionsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !447    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !450
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %.promoted = load ptr, ptr %i.d, align 8, !tbaa !453
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.g = phi ptr [ %.promoted, %bb.a ], [ %i.n, %bb.g ] ; 5 uses
  %.014 = phi i32 [ %i.c, %bb.a ], [ %.115, %bb.g ] ; 6 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !388  ; 2 uses
  switch i32 %i.h, label %.thread68 [
    i32 115, label %bb.c
    i32 109, label %bb.d
    i32 105, label %bb.e
    i32 120, label %bb.f
    i32 45, label %bb.k
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
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !453
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %.preheader73, label %bb.b

.preheader73:                                     ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !466, !nonnull !107, !align !108
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !414  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !172, !nonnull !107, !noundef !107
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.preheader73, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread
  %i.v = phi i32 [ %.pre, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread ], [ %i.h, %.preheader73 ] ; 2 uses
  %storemerge = phi ptr [ %i.af, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread ], [ %i.g, %.preheader73 ] ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !388
  %i.y = icmp slt i32 %i.x, %i.v                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.y, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i.i.i, %i.u
  br i1 %i.z, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !388
  %i.ac = icmp slt i32 %i.v, %i.ab
  br i1 %i.ac, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !432
  %.not = icmp eq i8 %i.ae, 1
  br i1 %.not, label %bb.h, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit
  %i.af = getelementptr inbounds i8, ptr %storemerge, i64 -4 ; 2 uses
  %.pre = load i32, ptr %i.af, align 4, !tbaa !388
  br label %.lr.ph.i.i.i.i.i.preheader, !llvm.loop !1450

bb.h:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !453
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !452
  %i.ai = ptrtoint ptr %storemerge to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !395
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !414, !noalias !1459
  call void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(232) %i.ao, i32 noundef 8)
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 8, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !84
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit

bb.j:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.j
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !84
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i
end_hunk_1
