inline.NumInlined: 7990
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZNK5boost16cpp_regex_traitsIcE3toiERPKcS3_i:bb.a
  %.not.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %1, align 8, !tbaa !159   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !572
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !574
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %.not.i27 = icmp eq i64 %i.cu, 0
  br i1 %.not.i27, label %bb.r, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %4, align 8, !tbaa !33
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef i64 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit unwind label %bb.s, !inline_history !575

_ZNSt15basic_streambufIcSt11char_traitsIcEE8in_availEv.exit: ; preds = %bb.q, %bb.r
  %i.cz = phi i64 [ %i.cu, %bb.q ], [ %i.cy, %bb.r ]
  %i.da = ptrtoint ptr %i.cn to i64
  %i.db = add i64 %i.cz, %i.da
  %i.dc = sub i64 %i.bj, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.cn, i64 %i.dc
  store ptr %i.dd, ptr %1, align 8, !tbaa !159
  %i.de = load i64, ptr %i.a, align 8, !tbaa !12
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
  store ptr %i.dg, ptr %5, align 8, !tbaa !33
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.di = getelementptr i8, ptr %i.dg, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr %5, i64 %i.dj
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !33
  store i64 0, ptr %i.i, align 8, !tbaa !564
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %4, align 8, !tbaa !33
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i64 %.015

bb.u:                                             ; preds = %bb.s, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.df, %bb.s ], [ %i.cf, %bb.o ], [ %i.ce, %bb.n ]
  %i.dl = load ptr, ptr @_ZTTSi, align 8          ; 2 uses
  store ptr %i.dl, ptr %5, align 8, !tbaa !33
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSi, i64 8), align 8
  %i.dn = getelementptr i8, ptr %i.dl, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %5, i64 %i.do
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !33
  store i64 0, ptr %i.i, align 8, !tbaa !564
  br label %.body

.body:                                            ; preds = %bb.b, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.l, %bb.b ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %4, align 8, !tbaa !33
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
  %i.f = load i8, ptr %.0810.i.i, align 1, !tbaa !16
  %i.g = sext i8 %i.f to i64
  %i.h = shl i64 %.011.i.i, 6
  %i.i = lshr i64 %.011.i.i, 2
  %i.j = add i64 %i.h, 2654435769
  %i.k = add i64 %i.j, %i.i
  %i.l = add i64 %i.k, %i.g
  %i.m = xor i64 %i.l, %.011.i.i                  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
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
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !410

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.v, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 3 uses
  %.0810.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.w, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod33 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.x = load i8, ptr %.0810.i.i.epil.init, align 1, !tbaa !16
  %i.y = sext i8 %i.x to i64
  %i.z = shl i64 %.011.i.i.epil.init, 6
  %i.aa = lshr i64 %.011.i.i.epil.init, 2
  %i.ab = add i64 %i.z, 2654435769
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = add i64 %i.ac, %i.y
  %i.ae = xor i64 %i.ad, %.011.i.i.epil.init
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa31 = phi i64 [ %i.v, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.ae, %.lr.ph.i.i.epil.preheader ]
  %i.af = urem i64 %.lcssa31, 2147483647
  %i.ag = shl nuw nsw i64 %i.af, 32
  %i.ah = or i64 %i.ag, 4611686018427387904
  br label %_ZN5boost13re_detail_60020named_subexpressions4nameC2IcEEPKT_S6_i.exit

_ZN5boost13re_detail_60020named_subexpressions4nameC2IcEEPKT_S6_i.exit: ; preds = %bb.a, %._crit_edge.loopexit.i.i
  %.0.lcssa.i.i = phi i64 [ 4611686018427387904, %bb.a ], [ %i.ah, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !576 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !88
  %.not.i.i4 = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost13re_detail_60020named_subexpressions4nameC2IcEEPKT_S6_i.exit
  %.sroa.0.0.insert.ext = zext i32 %3 to i64
  %.sroa.0.0.insert.insert = or i64 %.0.lcssa.i.i, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.aj, align 4
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !576
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !576
  %.pre = load ptr, ptr %0, align 8, !tbaa !577
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %_ZN5boost13re_detail_60020named_subexpressions4nameC2IcEEPKT_S6_i.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !85    ; 7 uses
  %i.ap = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.d, label %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #29
  unreachable

_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #30 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  %.sroa.0.0.insert.ext6 = zext i32 %3 to i64
  %.sroa.0.0.insert.insert8 = or i64 %.0.lcssa.i.i, %.sroa.0.0.insert.ext6
  store i64 %.sroa.0.0.insert.insert8, ptr %i.ba, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.aj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bb = ptrtoaddr ptr %i.az to i64
  %4 = sub i64 %i.ap, %i.aq
  %5 = add i64 %4, -8                             ; 2 uses
  %i.bc = lshr i64 %5, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 72
  %i.be = sub i64 %i.aq, %i.bb
  %diff.check = icmp ugt i64 %i.be, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bd, 4611686018427387900     ; 3 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.az, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ao, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bi ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.ao, i64 %i.bi ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.bj = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 4, !alias.scope !581, !noalias !578
  %wide.load28 = load <2 x i64>, ptr %i.bj, align 4, !alias.scope !581, !noalias !578
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !578, !noalias !581
  store <2 x i64> %wide.load28, ptr %i.bk, align 4, !alias.scope !578, !noalias !581
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !583

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.preheader30:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.bm = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !581, !noalias !578
  store i64 %i.bm, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !578, !noalias !581
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.aj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !584

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bg, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #31
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.az, ptr %0, align 8, !tbaa !85
  store ptr %i.bp, ptr %i.ai, align 8, !tbaa !576
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bq, ptr %i.ak, align 8, !tbaa !88
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.br = phi ptr [ %i.an, %bb.b ], [ %i.bp, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bs = phi ptr [ %.pre, %bb.b ], [ %i.az, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i = icmp eq ptr %i.bs, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -8 ; 2 uses
  %.not1213.i = icmp eq ptr %i.bt, %i.bs
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1213.i
  br i1 %or.cond.i, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit, %bb.f
  %.sroa.02.014.i = phi ptr [ %i.bz, %bb.f ], [ %i.bt, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.014.i, i64 4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !585 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.02.014.i, i64 -4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !585 ; 2 uses
  %i.by = icmp slt i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.f, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.bz = getelementptr inbounds i8, ptr %.sroa.02.014.i, i64 -8 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !18
  %i.cb = load i32, ptr %.sroa.02.014.i, align 4, !tbaa !18
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !18
  store i32 %i.ca, ptr %.sroa.02.014.i, align 4, !tbaa !18
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !18
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !18
  %.not12.i = icmp eq ptr %i.bz, %i.bs
  br i1 %.not12.i, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !587

_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit: ; preds = %.lr.ph.i, %bb.f, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13parse_optionsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !292    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !293
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %.promoted = load ptr, ptr %i.d, align 8, !tbaa !305
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.g = phi ptr [ %.promoted, %bb.a ], [ %i.n, %bb.g ] ; 5 uses
  %.014 = phi i32 [ %i.c, %bb.a ], [ %.115, %bb.g ] ; 6 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
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
  store ptr %i.n, ptr %i.d, align 8, !tbaa !305
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %.preheader46, label %bb.b

.preheader46:                                     ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !331, !nonnull !48, !align !49
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !136
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader46
  %storemerge = phi ptr [ %i.x, %bb.h ], [ %i.g, %.preheader46 ] ; 4 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !305
  %i.t = load i8, ptr %storemerge, align 1, !tbaa !16
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16
  %.not = icmp eq i8 %i.w, 1
  %i.x = getelementptr inbounds i8, ptr %storemerge, i64 -1
  br i1 %.not, label %bb.i, label %bb.h, !llvm.loop !588

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !304
  %i.aa = ptrtoint ptr %storemerge to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !136, !noalias !589
  call void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIcE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(437) %i.af, i32 noundef 8)
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 8, i64 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #31
  br label %_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit

bb.k:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNK5boost16cpp_regex_traitsIwE3toiERPKwS3_i:bb.a
bb.m:                                             ; preds = %_ZNSt15basic_streambufIwSt11char_traitsIwEE9pubsetbufEPwl.exit
  %i.bv = call i32 @llvm.abs.i32(i32 %3, i1 true) ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !33
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %5, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !569
  %i.cc = and i32 %i.cb, -75
  %switch.selectcmp = icmp eq i32 %i.bv, 8
  %switch.select = select i1 %switch.selectcmp, i32 64, i32 2
  %switch.selectcmp57 = icmp eq i32 %i.bv, 16
  %switch.select58 = select i1 %switch.selectcmp57, i32 8, i32 %switch.select
  %i.cd = or disjoint i32 %i.cc, %switch.select58
  store i32 %i.cd, ptr %i.ca, align 8, !tbaa !570
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
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !33
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !571
  %i.cn = and i32 %i.cm, 5
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.co = load ptr, ptr %1, align 8, !tbaa !1055  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1194 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1196 ; 2 uses
  %.not.i27 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i27, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.cu, %i.ct
  %i.cw = ashr exact i64 %i.cv, 2
  br label %_ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv.exit

bb.s:                                             ; preds = %bb.q
  %i.cx = load ptr, ptr %4, align 8, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef i64 %i.cz(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv.exit unwind label %bb.t, !inline_history !1197

_ZNSt15basic_streambufIwSt11char_traitsIwEE8in_availEv.exit: ; preds = %bb.r, %bb.s
  %i.db = phi i64 [ %i.cw, %bb.r ], [ %i.da, %bb.s ]
  %i.dc = ptrtoint ptr %i.co to i64
  %i.dd = sub i64 %i.bj, %i.dc
  %i.de = ashr exact i64 %i.dd, 2
  %i.df = sub nsw i64 %i.de, %i.db
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.df
  store ptr %i.dg, ptr %1, align 8, !tbaa !1055
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !12
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
  store ptr %i.dj, ptr %5, align 8, !tbaa !33
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt13basic_istreamIwSt11char_traitsIwEE, i64 8), align 8
  %i.dl = getelementptr i8, ptr %i.dj, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %5, i64 %i.dm
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !33
  store i64 0, ptr %i.i, align 8, !tbaa !1189
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIwSt11char_traitsIwEE, i64 16), ptr %4, align 8, !tbaa !33
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i64 %.015

bb.v:                                             ; preds = %bb.t, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.di, %bb.t ], [ %i.cg, %bb.o ], [ %i.cf, %bb.n ]
  %i.do = load ptr, ptr @_ZTTSt13basic_istreamIwSt11char_traitsIwEE, align 8 ; 2 uses
  store ptr %i.do, ptr %5, align 8, !tbaa !33
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt13basic_istreamIwSt11char_traitsIwEE, i64 8), align 8
  %i.dq = getelementptr i8, ptr %i.do, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %5, i64 %i.dr
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !33
  store i64 0, ptr %i.i, align 8, !tbaa !1189
  br label %.body

.body:                                            ; preds = %bb.b, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.l, %bb.b ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIwSt11char_traitsIwEE, i64 16), ptr %4, align 8, !tbaa !33
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
  %i.a = load i32, ptr %.0810.i.i, align 4, !tbaa !808
  %i.b = add i32 %i.a, -1640531527
  %i.c = zext i32 %i.b to i64
  %i.d = shl i64 %.011.i.i, 6
  %i.e = lshr i64 %.011.i.i, 2
  %i.f = add i64 %i.e, %i.d
  %i.g = add i64 %i.f, %i.c
  %i.h = xor i64 %i.g, %.011.i.i                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %2
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1057

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.j = urem i64 %i.h, 2147483647
  %i.k = shl nuw nsw i64 %i.j, 32
  %i.l = or i64 %i.k, 4611686018427387904
  br label %_ZN5boost13re_detail_60020named_subexpressions4nameC2IwEEPKT_S6_i.exit

_ZN5boost13re_detail_60020named_subexpressions4nameC2IwEEPKT_S6_i.exit: ; preds = %bb.a, %._crit_edge.loopexit.i.i
  %.0.lcssa.i.i = phi i64 [ 4611686018427387904, %bb.a ], [ %i.l, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !576  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88
  %.not.i.i4 = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost13re_detail_60020named_subexpressions4nameC2IwEEPKT_S6_i.exit
  %.sroa.0.0.insert.ext = zext i32 %3 to i64
  %.sroa.0.0.insert.insert = or i64 %.0.lcssa.i.i, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.n, align 4
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !576
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !576
  %.pre = load ptr, ptr %0, align 8, !tbaa !577
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit

bb.c:                                             ; preds = %_ZN5boost13re_detail_60020named_subexpressions4nameC2IwEEPKT_S6_i.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !85     ; 7 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 4 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.d, label %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #29
  unreachable

_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #30 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %.sroa.0.0.insert.ext6 = zext i32 %3 to i64
  %.sroa.0.0.insert.insert8 = or i64 %.0.lcssa.i.i, %.sroa.0.0.insert.ext6
  store i64 %.sroa.0.0.insert.insert8, ptr %i.ae, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.af = ptrtoaddr ptr %i.ad to i64
  %4 = sub i64 %i.t, %i.u
  %5 = add i64 %4, -8                             ; 2 uses
  %i.ag = lshr i64 %5, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 72
  %i.ai = sub i64 %i.u, %i.af
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.aj  ; 2 uses
  %i.al = getelementptr i8, ptr %i.s, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.am ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.s, i64 %i.am ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.an = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 4, !alias.scope !1201, !noalias !1198
  %wide.load28 = load <2 x i64>, ptr %i.an, align 4, !alias.scope !1201, !noalias !1198
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !1198, !noalias !1201
  store <2 x i64> %wide.load28, ptr %i.ao, align 4, !alias.scope !1198, !noalias !1201
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.preheader30:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !1201, !noalias !1198
  store i64 %i.aq, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !1198, !noalias !1201
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.n
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1204

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZNKSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ak, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.v) #31
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ad, ptr %0, align 8, !tbaa !85
  store ptr %i.at, ptr %i.m, align 8, !tbaa !576
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.au, ptr %i.o, align 8, !tbaa !88
  br label %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.av = phi ptr [ %i.r, %bb.b ], [ %i.at, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 2 uses
  %i.aw = phi ptr [ %.pre, %bb.b ], [ %i.ad, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ] ; 3 uses
  %.not.i = icmp eq ptr %i.aw, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -8 ; 2 uses
  %.not1213.i = icmp eq ptr %i.ax, %i.aw
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1213.i
  br i1 %or.cond.i, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit, %bb.f
  %.sroa.02.014.i = phi ptr [ %i.bd, %bb.f ], [ %i.ax, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.02.014.i, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !585 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.02.014.i, i64 -4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !585 ; 2 uses
  %i.bc = icmp slt i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.f, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr inbounds i8, ptr %.sroa.02.014.i, i64 -8 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  %i.bf = load i32, ptr %.sroa.02.014.i, align 4, !tbaa !18
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !18
  store i32 %i.be, ptr %.sroa.02.014.i, align 4, !tbaa !18
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !18
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !18
  %.not12.i = icmp eq ptr %i.bd, %i.aw
  br i1 %.not12.i, label %_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit, label %.lr.ph.i, !llvm.loop !587

_ZN5boost13re_detail_60015bubble_down_oneIN9__gnu_cxx17__normal_iteratorIPNS0_20named_subexpressions4nameESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit: ; preds = %.lr.ph.i, %bb.f, %_ZNSt6vectorIN5boost13re_detail_60020named_subexpressions4nameESaIS3_EE9push_backEOS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE13parse_optionsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !969    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !970
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %.promoted = load ptr, ptr %i.d, align 8, !tbaa !975
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.g = phi ptr [ %.promoted, %bb.a ], [ %i.n, %bb.g ] ; 5 uses
  %.014 = phi i32 [ %i.c, %bb.a ], [ %.115, %bb.g ] ; 6 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !808  ; 2 uses
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
  store ptr %i.n, ptr %i.d, align 8, !tbaa !975
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %.preheader73, label %bb.b

.preheader73:                                     ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !848  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !121, !nonnull !48, !noundef !48
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
  %i.x = load i32, ptr %i.w, align 4, !tbaa !808
  %i.y = icmp slt i32 %i.x, %i.v                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.y, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.y, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.z = icmp eq ptr %.19.i.i.i.i.i, %i.u
  br i1 %i.z, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !808
  %i.ac = icmp slt i32 %i.v, %i.ab
  br i1 %i.ac, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !918
  %.not = icmp eq i8 %i.ae, 1
  br i1 %.not, label %bb.h, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit
  %i.af = getelementptr inbounds i8, ptr %storemerge, i64 -4 ; 2 uses
  %.pre = load i32, ptr %i.af, align 4, !tbaa !808
end_hunk_1
begin_hunk_2_@_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE18lookup_collatenameB5cxx11EPKwS4_:bb.a
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !810
  %i.r = load i64, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  store i64 %i.r, ptr %i.j, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.s = phi i64 [ %i.r, %.noexc.i ], [ %i.o, %bb.b ] ; 2 uses
  %i.t = phi ptr [ %i.q, %.noexc.i ], [ %i.j, %bb.b ] ; 4 uses
  switch i64 %i.o, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.u = load i32, ptr %2, align 4, !tbaa !808
  store i32 %i.u, ptr %i.t, align 4, !tbaa !808
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.v = call ptr @wmemcpy(ptr noundef %i.t, ptr noundef %2, i64 noundef %i.o) #27 ; 0 uses
  %.pre6.i.i = load i64, ptr %i.f, align 8, !tbaa !12
  %.pre7.i.i = load ptr, ptr %4, align 8, !tbaa !810
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.w = phi ptr [ %i.t, %._crit_edge.i.i ], [ %i.t, %bb.c ], [ %.pre7.i.i, %bb.d ]
  %i.x = phi i64 [ %i.s, %._crit_edge.i.i ], [ %i.s, %bb.c ], [ %.pre6.i.i, %bb.d ] ; 7 uses
  store i64 %i.x, ptr %i.k, align 8, !tbaa !806
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  store i32 0, ptr %i.y, align 4, !tbaa !808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !121 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.aa, null
  %.pre = load ptr, ptr %4, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i ], [ %i.aa, %bb.e ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i ], [ %i.ab, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !806 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ad) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !810
  %i.ah = call i32 @wmemcmp(ptr noundef %i.ag, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ai = sub i64 %i.ad, %i.x
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aj = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.aj, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.aj, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1289

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i.i
  %i.ak = icmp eq ptr %.19.i.i.i, %i.ab
  br i1 %i.ak, label %_ZNKSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !806 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.am, i64 %i.x) ; 2 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.an, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !810
  %i.aq = call i32 @wmemcmp(ptr noundef %.pre, ptr noundef %i.ap, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i, %bb.f
  %i.ar = sub i64 %i.x, %i.am
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ar, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aq, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i.i.i.i ]
  %i.as = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.as, ptr %i.ab, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.ab, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEclERKS5_S8_.exit.i.i ] ; 3 uses
  %i.at = icmp eq ptr %.pre, %i.j
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %i.au = icmp ult i64 %i.x, 4
  call void @llvm.assume(i1 %i.au)
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %i.av = load i64, ptr %i.j, align 8, !tbaa !16
  %i.aw = shl i64 %i.av, 2
  %i.ax = add i64 %i.aw, 4
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ax) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.not = icmp eq ptr %.sroa.0.0.i.i, %i.ab
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !803
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !810 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !806 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 %i.bc, ptr %i.e, align 8, !tbaa !12
  %i.bd = icmp ugt i64 %i.bc, 3
  br i1 %i.bd, label %.noexc.i24, label %._crit_edge.i.i21

.noexc.i24:                                       ; preds = %bb.g
  %i.be = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !810
  %i.bf = load i64, ptr %i.e, align 8, !tbaa !12  ; 2 uses
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !16
  br label %._crit_edge.i.i21

._crit_edge.i.i21:                                ; preds = %.noexc.i24, %bb.g
  %i.bg = phi i64 [ %i.bf, %.noexc.i24 ], [ %i.bc, %bb.g ] ; 2 uses
  %i.bh = phi ptr [ %i.be, %.noexc.i24 ], [ %i.az, %bb.g ] ; 4 uses
  switch i64 %i.bc, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i21
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !808
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !808
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i21
  %i.bj = call ptr @wmemcpy(ptr noundef %i.bh, ptr noundef %i.ba, i64 noundef %i.bc) #27 ; 0 uses
  %.pre6.i.i22 = load i64, ptr %i.e, align 8, !tbaa !12
  %.pre7.i.i23 = load ptr, ptr %0, align 8, !tbaa !810
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i21
  %i.bk = phi ptr [ %i.bh, %._crit_edge.i.i21 ], [ %i.bh, %bb.h ], [ %.pre7.i.i23, %bb.i ]
  %i.bl = phi i64 [ %i.bg, %._crit_edge.i.i21 ], [ %i.bg, %bb.h ], [ %.pre6.i.i22, %bb.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !806
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  store i32 0, ptr %i.bn, align 4, !tbaa !808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %bb.z

.thread:                                          ; preds = %..thread_crit_edge, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %.pre-phi57 = phi i64 [ %.pre56, %..thread_crit_edge ], [ %i.o, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit ] ; 3 uses
  %.pre-phi55 = phi i64 [ %.pre54, %..thread_crit_edge ], [ %i.n, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.bo, ptr %5, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 0, ptr %i.bp, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i64 %.pre-phi57, ptr %i.d, align 8, !tbaa !12
  %i.bq = icmp ugt i64 %.pre-phi57, 15
  br i1 %i.bq, label %.noexc.i31, label %._crit_edge.i.i28

.noexc.i31:                                       ; preds = %.thread
  %i.br = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.br, ptr %5, align 8, !tbaa !14
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  store i64 %i.bs, ptr %i.bo, align 8, !tbaa !16
  br label %._crit_edge.i.i28

._crit_edge.i.i28:                                ; preds = %.noexc.i31, %.thread
  %i.bt = phi i64 [ %i.bs, %.noexc.i31 ], [ %.pre-phi57, %.thread ]
  %i.bu = phi ptr [ %i.br, %.noexc.i31 ], [ %i.bo, %.thread ] ; 7 uses
  %.not7.i.i.i = icmp eq ptr %2, %3
  br i1 %.not7.i.i.i, label %bb.k, label %.lr.ph.i.i.i29.preheader

.lr.ph.i.i.i29.preheader:                         ; preds = %._crit_edge.i.i28
  %7 = sub i64 %i.b, %i.a
  %8 = add i64 %7, -4                             ; 2 uses
  %i.bv = lshr i64 %8, 2
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 124
  br i1 %min.iters.check, label %.lr.ph.i.i.i29.preheader104, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i29.preheader
  %i.bx = add i64 %i.b, -4
  %i.by = sub i64 %i.bx, %i.a                     ; 2 uses
  %i.bz = lshr i64 %i.by, 2
  %i.ca = getelementptr i8, ptr %i.bu, i64 %i.bz
  %scevgep = getelementptr i8, ptr %i.ca, i64 1
  %i.cb = and i64 %i.by, -4
  %i.cc = getelementptr i8, ptr %2, i64 %i.cb
  %scevgep80 = getelementptr i8, ptr %i.cc, i64 4
  %bound0 = icmp ult ptr %i.bu, %scevgep80
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i29.preheader104, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bw, 9223372036854775800     ; 4 uses
  %i.cd = getelementptr i8, ptr %i.bu, i64 %n.vec
  %i.ce = shl i64 %n.vec, 2
  %i.cf = getelementptr i8, ptr %2, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bu, i64 %index ; 2 uses
  %i.cg = shl i64 %index, 2
  %next.gep81 = getelementptr i8, ptr %2, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep81, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep81, align 4, !tbaa !808, !alias.scope !1290
  %wide.load82 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !808, !alias.scope !1290
  %i.ci = trunc <4 x i32> %wide.load to <4 x i8>
  %i.cj = trunc <4 x i32> %wide.load82 to <4 x i8>
  %i.ck = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.ci, ptr %next.gep, align 1, !tbaa !16, !alias.scope !1293, !noalias !1290
  store <4 x i8> %i.cj, ptr %i.ck, align 1, !tbaa !16, !alias.scope !1293, !noalias !1290
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !1295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i29.preheader104

.lr.ph.i.i.i29.preheader104:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i29.preheader, %middle.block
  %.09.i.i.i.ph = phi ptr [ %i.bu, %vector.memcheck ], [ %i.bu, %.lr.ph.i.i.i29.preheader ], [ %i.cd, %middle.block ]
  %.068.i.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.i.i29.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %.lr.ph.i.i.i29.preheader104, %.lr.ph.i.i.i29
  %.09.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i29 ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i29.preheader104 ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i29 ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i29.preheader104 ] ; 2 uses
  %i.cm = load i32, ptr %.068.i.i.i, align 4, !tbaa !808
  %i.cn = trunc i32 %i.cm to i8
  store i8 %i.cn, ptr %.09.i.i.i, align 1, !tbaa !16
  %i.co = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %.not.i.i.i30 = icmp eq ptr %i.co, %3
  br i1 %.not.i.i.i30, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i29, !llvm.loop !1296

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i29, %middle.block
  %.pre12.i.i = load i64, ptr %i.d, align 8, !tbaa !12
  %.pre13.i.i = load ptr, ptr %5, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i28
  %i.cq = phi ptr [ %.pre13.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.bu, %._crit_edge.i.i28 ]
  %i.cr = phi i64 [ %.pre12.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.bt, %._crit_edge.i.i28 ] ; 2 uses
  store i64 %i.cr, ptr %i.bp, align 8, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  store i8 0, ptr %i.cs, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN5boost13re_detail_60027lookup_default_collate_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ct = load ptr, ptr %5, align 8, !tbaa !14    ; 6 uses
  %i.cu = icmp eq ptr %i.ct, %i.bo
  %i.cv = load ptr, ptr %6, align 8, !tbaa !14    ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw                ; 2 uses
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.l
  br i1 %i.cx, label %bb.m, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.l
  br i1 %i.cx, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !17 ; 3 uses
  %i.da = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.da)
  switch i64 %i.cz, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.db = load i8, ptr %i.cv, align 1, !tbaa !16
  store i8 %i.db, ptr %i.ct, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cv, i64 %i.cz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.dc = load i64, ptr %i.cy, align 8, !tbaa !17 ; 2 uses
  store i64 %i.dc, ptr %i.bp, align 8, !tbaa !17
  %i.dd = load ptr, ptr %5, align 8, !tbaa !14
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc
  store i8 0, ptr %i.de, align 1, !tbaa !16
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cv, ptr %5, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = load <2 x i64>, ptr %i.df, align 8, !tbaa !16
  store <2 x i64> %i.dg, ptr %i.bp, align 8, !tbaa !16
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dh = load i64, ptr %i.bo, align 8, !tbaa !16
  store ptr %i.cv, ptr %5, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dj = load <2 x i64>, ptr %i.di, align 8, !tbaa !16
  store <2 x i64> %i.dj, ptr %i.bp, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ct, ptr %6, align 8, !tbaa !14
  store i64 %i.dh, ptr %i.cw, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cw, ptr %6, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.p, %bb.q
  %i.dk = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ct, %bb.p ], [ %i.cw, %bb.q ]
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !17
  store i8 0, ptr %i.dk, align 1, !tbaa !16
  %i.dm = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !16
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.dr = load i64, ptr %i.bp, align 8, !tbaa !17 ; 10 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dt = load ptr, ptr %5, align 8, !tbaa !14    ; 7 uses
  %i.du = ptrtoaddr ptr %i.dt to i64
  %i.dv = getelementptr i8, ptr %i.dt, i64 %i.dr  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dw, ptr %0, align 8, !tbaa !803
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.dx, align 8, !tbaa !806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 %i.dr, ptr %i.c, align 8, !tbaa !12
  %i.dy = icmp ugt i64 %i.dr, 3
  br i1 %i.dy, label %.noexc.i36, label %._crit_edge.i.i33

.noexc.i36:                                       ; preds = %bb.r
  %i.dz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc37 unwind label %bb.t   ; 2 uses

.noexc37:                                         ; preds = %.noexc.i36
  store ptr %i.dz, ptr %0, align 8, !tbaa !810
  %i.ea = load i64, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  store i64 %i.ea, ptr %i.dw, align 8, !tbaa !16
  br label %._crit_edge.i.i33

._crit_edge.i.i33:                                ; preds = %.noexc37, %bb.r
  %i.eb = phi i64 [ %i.ea, %.noexc37 ], [ %i.dr, %bb.r ] ; 2 uses
  %i.ec = phi ptr [ %i.dz, %.noexc37 ], [ %i.dw, %bb.r ] ; 7 uses
  %min.iters.check90 = icmp ult i64 %i.dr, 16
  br i1 %min.iters.check90, label %.lr.ph.i.i.i34.preheader, label %vector.memcheck84

vector.memcheck84:                                ; preds = %._crit_edge.i.i33
  %i.ed = shl i64 %i.dr, 2
  %scevgep85 = getelementptr i8, ptr %i.ec, i64 %i.ed
end_hunk_2
begin_hunk_3_@_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE20get_next_set_literalERNS0_14basic_char_setIwS5_EE:bb.a

._crit_edge82:                                    ; preds = %bb.z
  %.pre = load ptr, ptr %6, align 8, !tbaa !810
  br label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %i.fq = load ptr, ptr %6, align 8, !tbaa !810   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !16
  %i.fu = shl i64 %i.ft, 2
  %i.fv = add i64 %i.fu, 4
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fv) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %common.resume

bb.ab:                                            ; preds = %bb.y
  %i.fw = load ptr, ptr %6, align 8, !tbaa !810   ; 4 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !808
  store i32 %i.fx, ptr %0, align 4, !tbaa !1256
  %i.fy = icmp samesign ugt i64 %i.fh, 1
  br i1 %i.fy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !808
  store i32 %i.ga, ptr %i.a, align 4, !tbaa !1258
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  store i32 0, ptr %i.a, align 4, !tbaa !1258
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge82, %bb.ac, %bb.ad
  %i.gb = phi ptr [ %.pre, %._crit_edge82 ], [ %i.fw, %bb.ac ], [ %i.fw, %bb.ad ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i69: ; preds = %bb.ae
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !16
  %i.gf = shl i64 %i.ge, 2
  %i.gg = add i64 %i.gf, 4
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gg) #31
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit71: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.af

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %bb.a, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.gh, ptr %i.d, align 8, !tbaa !975
  store i32 %i.f, ptr %0, align 4, !tbaa !1256
  br label %bb.af

bb.af:                                            ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit71, %bb.x, %._crit_edge, %bb.j, %bb.k, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit.thread, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit56, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit50.thread, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit38, %bb.h, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE9add_rangeERKNS0_7digraphIwEESA_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1331 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1053 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %1, align 4, !tbaa !808
  store i32 %i.g, ptr %i.c, align 4, !tbaa !1256
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load i32, ptr %i.f, align 4, !tbaa !808
  store i32 %i.i, ptr %i.h, align 4, !tbaa !1258
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !1331
  br label %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1331
  %.pre13 = load ptr, ptr %i.d, align 8, !tbaa !1053
  br label %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.e, %bb.b ], [ %.pre13, %bb.c ]
  %i.l = phi ptr [ %i.j, %bb.b ], [ %.pre, %bb.c ] ; 5 uses
  %.not.i8 = icmp eq ptr %i.l, %i.k
  br i1 %.not.i8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE9push_backERKS3_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %2, align 4, !tbaa !808
  store i32 %i.n, ptr %i.l, align 4, !tbaa !1256
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.m, align 4, !tbaa !808
  store i32 %i.p, ptr %i.o, align 4, !tbaa !1258
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.q, ptr %i.b, align 8, !tbaa !1331
  br label %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE9push_backERKS3_.exit9

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE9push_backERKS3_.exit
  tail call void @_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.l, ptr noundef nonnull align 4 dereferenceable(8) %2)
  br label %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE9push_backERKS3_.exit9

_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE9push_backERKS3_.exit9: ; preds = %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1258
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE9push_backERKS3_.exit9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  store i8 1, ptr %i.t, align 1, !tbaa !1045
  %i.u = tail call { ptr, i8 } @_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIRKS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 0 uses
  %i.v = load i32, ptr %i.r, align 4, !tbaa !1258
  %.not.i10 = icmp eq i32 %i.v, 0
  br i1 %.not.i10, label %_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10add_singleERKNS0_7digraphIwEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.t, align 1, !tbaa !1045
  br label %_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10add_singleERKNS0_7digraphIwEE.exit

_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10add_singleERKNS0_7digraphIwEE.exit: ; preds = %bb.f, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 0, ptr %i.w, align 4, !tbaa !1048
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10add_singleERKNS0_7digraphIwEE.exit, %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE9push_backERKS3_.exit9
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1258
  %.not7 = icmp eq i32 %i.y, 0
  br i1 %.not7, label %_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10add_singleERKNS0_7digraphIwEE.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  store i8 1, ptr %i.z, align 1, !tbaa !1045
  %i.aa = tail call { ptr, i8 } @_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIRKS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 0 uses
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !1258
  %.not.i11 = icmp eq i32 %i.ab, 0
  br i1 %.not.i11, label %_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10add_singleERKNS0_7digraphIwEE.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.z, align 1, !tbaa !1045
  br label %_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10add_singleERKNS0_7digraphIwEE.exit12

_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10add_singleERKNS0_7digraphIwEE.exit12: ; preds = %bb.j, %bb.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 0, ptr %i.ac, align 4, !tbaa !1048
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1331 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1052   ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #29
  unreachable

_ZNKSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <2 x i32>, ptr %2, align 4, !tbaa !808
  store <2 x i32> %i.r, ptr %i.q, align 4, !tbaa !808
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE12_M_check_lenEmPKc.exit
  %3 = sub i64 %i.m, %i.e
  %4 = add i64 %3, -8                             ; 2 uses
  %i.s = lshr i64 %4, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader89, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.u = add i64 %i.m, -8
  %i.v = sub i64 %i.u, %i.e
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep49 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep49
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader89, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 3 uses
  %i.ac = or disjoint i64 %i.ab, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab
  %next.gep50 = getelementptr i8, ptr %i.p, i64 %i.ac
  %next.gep51 = getelementptr i8, ptr %i.c, i64 %i.ab
  %next.gep52 = getelementptr i8, ptr %i.c, i64 %i.ac
  %wide.vec = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !808, !alias.scope !1332
  %wide.vec54 = load <4 x i32>, ptr %next.gep52, align 4, !tbaa !808, !alias.scope !1332
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !808, !alias.scope !1335, !noalias !1332
  store <4 x i32> %wide.vec54, ptr %next.gep50, align 4, !tbaa !808, !alias.scope !1335, !noalias !1332
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1337

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader89

.lr.ph.i.i.i.i.i.preheader89:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader89, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader89 ] ; 3 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader89 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.af = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !808
  store i32 %i.af, ptr %.015.i.i.i.i.i, align 4, !tbaa !1256
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !808
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !1258
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1338

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 7 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader

.lr.ph.i.i.i.i.i29.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %5 = sub i64 %i.d, %i.m
  %6 = add i64 %5, -8                             ; 2 uses
  %i.al = lshr i64 %6, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %6, 120
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.i.i29.preheader88, label %vector.memcheck59

vector.memcheck59:                                ; preds = %.lr.ph.i.i.i.i.i29.preheader
  %i.an = add i64 %i.d, -8
  %i.ao = sub i64 %i.an, %i.m
  %i.ap = and i64 %i.ao, -8                       ; 2 uses
  %i.aq = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.ap
  %scevgep60 = getelementptr i8, ptr %i.aq, i64 16
  %i.ar = getelementptr i8, ptr %1, i64 %i.ap
  %scevgep61 = getelementptr i8, ptr %i.ar, i64 8
  %bound062 = icmp ult ptr %i.ak, %scevgep61
  %bound163 = icmp ult ptr %1, %scevgep60
  %found.conflict64 = and i1 %bound062, %bound163
  br i1 %found.conflict64, label %.lr.ph.i.i.i.i.i29.preheader88, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck59
  %n.vec68 = and i64 %i.am, 4611686018427387900   ; 3 uses
  %i.as = shl i64 %n.vec68, 3                     ; 2 uses
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.as
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next83, %vector.body69 ] ; 2 uses
  %i.av = shl i64 %index70, 3                     ; 3 uses
  %i.aw = or disjoint i64 %i.av, 16               ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.ak, i64 %i.av
  %next.gep72 = getelementptr i8, ptr %i.ak, i64 %i.aw
  %next.gep73 = getelementptr i8, ptr %1, i64 %i.av
  %next.gep74 = getelementptr i8, ptr %1, i64 %i.aw
  %wide.vec75 = load <4 x i32>, ptr %next.gep73, align 4, !tbaa !808, !alias.scope !1339
  %wide.vec78 = load <4 x i32>, ptr %next.gep74, align 4, !tbaa !808, !alias.scope !1339
  store <4 x i32> %wide.vec75, ptr %next.gep71, align 4, !tbaa !808, !alias.scope !1342, !noalias !1339
  store <4 x i32> %wide.vec78, ptr %next.gep72, align 4, !tbaa !808, !alias.scope !1342, !noalias !1339
  %index.next83 = add nuw i64 %index70, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next83, %n.vec68
  br i1 %i.ax, label %middle.block84, label %vector.body69, !llvm.loop !1344

middle.block84:                                   ; preds = %vector.body69
  %cmp.n85 = icmp eq i64 %i.am, %n.vec68
  br i1 %cmp.n85, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader88

.lr.ph.i.i.i.i.i29.preheader88:                   ; preds = %vector.memcheck59, %.lr.ph.i.i.i.i.i29.preheader, %middle.block84
  %.015.i.i.i.i.i30.ph = phi ptr [ %i.ak, %vector.memcheck59 ], [ %i.ak, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.at, %middle.block84 ]
  %.01214.i.i.i.i.i31.ph = phi ptr [ %1, %vector.memcheck59 ], [ %1, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.au, %middle.block84 ]
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.lr.ph.i.i.i.i.i29.preheader88, %.lr.ph.i.i.i.i.i29
  %.015.i.i.i.i.i30 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i29 ], [ %.015.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i29.preheader88 ] ; 2 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i29 ], [ %.01214.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i29.preheader88 ] ; 2 uses
  %i.ay = load <2 x i32>, ptr %.01214.i.i.i.i.i31, align 4, !tbaa !808
  store <2 x i32> %i.ay, ptr %.015.i.i.i.i.i30, align 4, !tbaa !808
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 8 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !1345

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %middle.block84, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.ak, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.at, %middle.block84 ], [ %i.ba, %.lr.ph.i.i.i.i.i29 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN5boost13re_detail_6007digraphIwEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1053
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.be) #31
  br label %_ZNSt12_Vector_baseIN5boost13re_detail_6007digraphIwEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5boost13re_detail_6007digraphIwEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost13re_detail_6007digraphIwEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !1052
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !1331
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !1053
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIRKS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02124.i = load ptr, ptr %i.a, align 8, !tbaa !125 ; 2 uses
  %.not25.i = icmp eq ptr %.02124.i, null
  %.pre.i.pre.pre = load i32, ptr %1, align 4, !tbaa !808 ; 7 uses
  br i1 %.not25.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02126.i = phi ptr [ %.02124.i, %.lr.ph.i ], [ %.02126.i.be, %.backedge.backedge ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02126.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1256 ; 3 uses
  %i.g = icmp slt i32 %.pre.i.pre.pre, %i.f
  br i1 %i.g, label %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.h = icmp slt i32 %i.f, %.pre.i.pre.pre
  br i1 %i.h, label %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i.thread, label %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.i

_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02126.i, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1258
  %i.k = icmp slt i32 %i.d, %i.j
  br i1 %i.k, label %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i, label %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i.thread

_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i: ; preds = %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.i, %.backedge
  %i.l = getelementptr inbounds nuw i8, ptr %.02126.i, i64 16
  %.021.i = load ptr, ptr %i.l, align 8, !tbaa !125 ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i, %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i.thread
  %.02126.i.be = phi ptr [ %.021.i, %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i ], [ %.021.i13, %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i.thread ]
  br label %.backedge, !llvm.loop !1346

_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i.thread: ; preds = %bb.b, %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %.02126.i, i64 24
  %.021.i13 = load ptr, ptr %i.m, align 8, !tbaa !125 ; 2 uses
  %.not.i14 = icmp eq ptr %.021.i13, null
  br i1 %.not.i14, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i, %bb.a
  %.020.lcssa34.i = phi ptr [ %i.b, %bb.a ], [ %.02126.i, %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.p = icmp eq ptr %.020.lcssa34.i, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i) #32 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !1256
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i.thread, %bb.c
  %i.r = phi i32 [ %.pre, %bb.c ], [ %i.f, %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i.thread ] ; 2 uses
  %.020.lcssa33.i = phi ptr [ %.020.lcssa34.i, %bb.c ], [ %.02126.i, %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i.thread ] ; 2 uses
  %.sroa.06.0.i = phi ptr [ %i.q, %bb.c ], [ %.02126.i, %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit.thread.i.thread ] ; 3 uses
  %i.s = icmp slt i32 %i.r, %.pre.i.pre.pre
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.thread
  %i.t = icmp slt i32 %.pre.i.pre.pre, %i.r
  br i1 %i.t, label %bb.i, label %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit5.i

_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit5.i: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1258
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1258
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %bb.i

bb.e:                                             ; preds = %._crit_edge.thread.i, %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit5.i, %._crit_edge.i.thread
  %.sroa.4.0.i.ph = phi ptr [ %.020.lcssa33.i, %._crit_edge.i.thread ], [ %.020.lcssa33.i, %_ZNKSt4lessIN5boost13re_detail_6007digraphIwEEEclERKS3_S6_.exit5.i ], [ %.020.lcssa34.i, %._crit_edge.thread.i ] ; 4 uses
  %i.z = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.z, label %_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1256 ; 2 uses
  %i.ac = icmp slt i32 %.pre.i.pre.pre, %i.ab
  br i1 %i.ac, label %_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp slt i32 %i.ab, %.pre.i.pre.pre
  br i1 %i.ad, label %_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1258
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1258
  %i.ai = icmp slt i32 %i.af, %i.ah
  br label %_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.aj = phi i1 [ %i.ai, %bb.h ], [ true, %bb.e ], [ true, %bb.f ], [ false, %bb.g ]
  %i.ak = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.pre.i.pre.pre, ptr %i.al, align 4, !tbaa !1256
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !808
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !1258
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #27
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !124
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !124
  br label %bb.i

end_hunk_3
begin_hunk_4_@_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE14add_emacs_codeEb:bb.a

.noexc80:                                         ; preds = %bb.cj
  %i.fn = ptrtoint ptr %i.c to i64
  %i.fo = ptrtoint ptr %i.fi to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = ashr exact i64 %i.fp, 2
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 4, i64 noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %.noexc80
  %i.fr = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78: ; preds = %bb.ck
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !16
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #31
  br label %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit81

bb.cl:                                            ; preds = %.noexc80
  %i.fw = landingpad { ptr, i32 }
          cleanup
  %i.fx = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i75: ; preds = %bb.cl
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !16
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i76: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body

_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit81: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.cr

bb.cm:                                            ; preds = %bb.cg, %bb.ca, %bb.bu, %bb.bk, %bb.ba, %bb.aq, %_ZNK5boost16cpp_regex_traitsIwE16lookup_classnameEPKwS3_.exit, %bb.z, %bb.i, %bb.h
  %i.gc = invoke noundef ptr @_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10append_setERKNS0_14basic_char_setIwS5_EEPSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef null)
          to label %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10append_setERKNS0_14basic_char_setIwS5_EE.exit unwind label %bb.aj

_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10append_setERKNS0_14basic_char_setIwS5_EE.exit: ; preds = %bb.cm
  %i.gd = icmp eq ptr %i.gc, null
  %i.ge = load ptr, ptr %i.a, align 8, !tbaa !975 ; 2 uses
  br i1 %i.gd, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10append_setERKNS0_14basic_char_setIwS5_EE.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !974
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.gh = load ptr, ptr %0, align 8, !tbaa !969
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !817
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !848, !noalias !1357
  invoke void @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIwE12error_stringB5cxx11ENS_15regex_constants10error_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(232) %i.gk, i32 noundef 4)
          to label %.noexc88 unwind label %bb.aj

.noexc88:                                         ; preds = %bb.cn
  %i.gl = ptrtoint ptr %i.ge to i64
  %i.gm = ptrtoint ptr %i.gg to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = ashr exact i64 %i.gn, 2
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 4, i64 noundef %i.go, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %.noexc88
  %i.gp = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86: ; preds = %bb.co
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !16
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #31
  br label %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit91

bb.cp:                                            ; preds = %.noexc88
  %i.gu = landingpad { ptr, i32 }
          cleanup
  %i.gv = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i83: ; preds = %bb.cp
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !16
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i84: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit91: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.cr

bb.cq:                                            ; preds = %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE10append_setERKNS0_14basic_char_setIwS5_EE.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store ptr %i.ha, ptr %i.a, align 8, !tbaa !975
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit91, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit81, %bb.cq
  %.05 = phi i1 [ true, %bb.cq ], [ false, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit81 ], [ false, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit91 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.hc = load ptr, ptr %i.ay, align 8, !tbaa !121
  invoke void @_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.hb, ptr noundef %i.hc)
          to label %_ZNSt3setIN5boost13re_detail_6007digraphIwEESt4lessIS3_ESaIS3_EED2Ev.exit.i unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #28
  unreachable

_ZNSt3setIN5boost13re_detail_6007digraphIwEESt4lessIS3_ESaIS3_EED2Ev.exit.i: ; preds = %bb.cr
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !1052 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EED2Ev.exit.i, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt3setIN5boost13re_detail_6007digraphIwEESt4lessIS3_ESaIS3_EED2Ev.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !1053
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #31
  br label %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EED2Ev.exit.i: ; preds = %bb.ct, %_ZNSt3setIN5boost13re_detail_6007digraphIwEESt4lessIS3_ESaIS3_EED2Ev.exit.i
  %i.hm = load ptr, ptr %i.at, align 8, !tbaa !121
  invoke void @_ZNSt8_Rb_treeIN5boost13re_detail_6007digraphIwEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef %i.hm)
          to label %_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEED2Ev.exit unwind label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EED2Ev.exit.i
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #28
  unreachable

_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEED2Ev.exit: ; preds = %_ZNSt6vectorIN5boost13re_detail_6007digraphIwEESaIS3_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.cv

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i84, %bb.aj, %bb.ci, %bb.ch, %bb.cb, %bb.bx, %bb.bw, %bb.bv, %bb.bn, %bb.bm, %bb.bl, %bb.bd, %bb.bc, %bb.bb, %bb.at, %bb.as, %bb.ar, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.ch ], [ %i.cr, %bb.ah ], [ %i.cq, %bb.ag ], [ %i.cp, %bb.af ], [ %i.co, %bb.ae ], [ %i.cn, %bb.ad ], [ %i.cm, %bb.ac ], [ %i.cl, %bb.ab ], [ %i.ck, %bb.aa ], [ %i.dk, %bb.at ], [ %i.dj, %bb.as ], [ %i.di, %bb.ar ], [ %i.dw, %bb.bd ], [ %i.dv, %bb.bc ], [ %i.du, %bb.bb ], [ %i.ei, %bb.bn ], [ %i.eh, %bb.bm ], [ %i.eg, %bb.bl ], [ %i.eu, %bb.bx ], [ %i.et, %bb.bw ], [ %i.es, %bb.bv ], [ %i.ey, %bb.cb ], [ %i.fg, %bb.ci ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i76 ], [ %i.cy, %bb.aj ], [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i84 ]
  call void @_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %common.resume

bb.cv:                                            ; preds = %_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEED2Ev.exit, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit
  %.1 = phi i1 [ false, %_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl.exit ], [ %.05, %_ZN5boost13re_detail_60014basic_char_setIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEED2Ev.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i64 noundef %2, ptr noundef align 8 %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.boost::regex_error", align 8 ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !969    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !982
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.d, align 4, !tbaa !982
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !976  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.h, ptr %i.i, align 8, !tbaa !975
  %i.j = icmp eq i64 %4, %2
  %i.k = tail call i64 @llvm.smax.i64(i64 %2, i64 10)
  %.sroa.speculated69 = add nsw i64 %i.k, -10
  %.021 = select i1 %i.j, i64 %.sroa.speculated69, i64 %4 ; 4 uses
  %i.l = add nsw i64 %2, 10                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !974
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.r, i64 %i.l) ; 3 uses
  %.not = icmp eq i32 %1, 17
  br i1 %.not, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not25 = icmp eq i64 %.021, 0
  %.not26 = icmp sle i64 %i.r, %i.l
  %or.cond = select i1 %.not25, i1 %.not26, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add i64 %i.t, -4611686018427387835
  %i.v = icmp ult i64 %i.u, 69
  br i1 %i.v, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.e
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.251, i64 noundef 69) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.x = add i64 %i.t, -4611686018427387844
  %i.y = icmp ult i64 %i.x, 60
  br i1 %i.y, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34: ; preds = %bb.g
  %i.z = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.252, i64 noundef 60) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.not27 = icmp eq i64 %.021, %.sroa.speculated
  br i1 %.not27, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !974 ; 2 uses
  %.idx74 = shl nsw i64 %.021, 2                  ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 %.idx74 ; 5 uses
  %.idx = shl nsw i64 %2, 2                       ; 8 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 %.idx  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %gepdiff = sub nsw i64 %.idx, %.idx74
  %i.af = ashr exact i64 %gepdiff, 2              ; 3 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !12
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.j
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ah, ptr %5, align 8, !tbaa !14
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  store i64 %i.ai, ptr %i.ad, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.j
  %i.aj = phi i64 [ %i.ai, %.noexc ], [ %i.af, %bb.j ]
  %i.ak = phi ptr [ %i.ah, %.noexc ], [ %i.ad, %bb.j ] ; 7 uses
  %.not7.i.i.i = icmp eq i64 %.idx74, %.idx
  br i1 %.not7.i.i.i, label %bb.k, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %8 = sub i64 %2, %.021
  %9 = add i64 %8, 4611686018427387903
  %10 = and i64 %9, 4611686018427387903           ; 2 uses
  %i.al = add nuw nsw i64 %10, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %10, 23
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader112, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.am = add i64 %.idx, -4
  %i.an = sub i64 %i.am, %.idx74
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = getelementptr i8, ptr %i.ak, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.ap, i64 1
  %bound0 = icmp ult ptr %i.ak, %i.ac
  %bound1 = icmp ult ptr %i.ab, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader112, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775800     ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ak, i64 %n.vec
  %i.ar = shl i64 %n.vec, 2
  %i.as = getelementptr i8, ptr %i.ab, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %index ; 2 uses
  %i.at = shl i64 %index, 2
  %next.gep88 = getelementptr i8, ptr %i.ab, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep88, align 4, !tbaa !808, !alias.scope !1360
  %wide.load89 = load <4 x i32>, ptr %i.au, align 4, !tbaa !808, !alias.scope !1360
  %i.av = trunc <4 x i32> %wide.load to <4 x i8>
  %i.aw = trunc <4 x i32> %wide.load89 to <4 x i8>
  %i.ax = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.av, ptr %next.gep, align 1, !tbaa !16, !alias.scope !1363, !noalias !1360
  store <4 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !16, !alias.scope !1363, !noalias !1360
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1365

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader112

.lr.ph.i.i.i.preheader112:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.09.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.068.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader112, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader112 ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader112 ] ; 2 uses
  %i.az = load i32, ptr %.068.i.i.i, align 4, !tbaa !808
  %i.ba = trunc i32 %i.az to i8
  store i8 %i.ba, ptr %.09.i.i.i, align 1, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %.not.i.i.i = icmp eq ptr %i.bb, %i.ac
  br i1 %.not.i.i.i, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1366

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre12.i.i = load i64, ptr %i.b, align 8, !tbaa !12
  %.pre13.i.i = load ptr, ptr %5, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i
  %i.bd = phi ptr [ %.pre13.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.ak, %._crit_edge.i.i ]
  %i.be = phi i64 [ %.pre12.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.aj, %._crit_edge.i.i ] ; 2 uses
  store i64 %i.be, ptr %i.ae, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.bg = load i64, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !17
  %i.bj = sub i64 4611686018427387903, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bg
  br i1 %i.bk, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
          to label %.noexc35 unwind label %bb.q

.noexc35:                                         ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.k
  %i.bl = load ptr, ptr %5, align 8, !tbaa !14
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bl, i64 noundef %i.bg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.q ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bn = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ad
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bp = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.br = load i64, ptr %i.bh, align 8, !tbaa !17
  %i.bs = add i64 %i.br, -4611686018427387894
  %i.bt = icmp ult i64 %i.bs, 10
  br i1 %i.bt, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.253, i64 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bv = load ptr, ptr %i.m, align 8, !tbaa !974 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 %.idx  ; 5 uses
  %.idx75 = shl nsw i64 %.sroa.speculated, 2      ; 4 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 %.idx75 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.by, ptr %6, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %gepdiff77 = sub nsw i64 %.idx75, %.idx
  %i.ca = ashr exact i64 %gepdiff77, 2            ; 3 uses
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !12
  %i.cb = icmp ugt i64 %i.ca, 15
  br i1 %i.cb, label %.noexc.i47, label %._crit_edge.i.i38

.noexc.i47:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37
  %i.cc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc48 unwind label %bb.r   ; 2 uses

.noexc48:                                         ; preds = %.noexc.i47
  store ptr %i.cc, ptr %6, align 8, !tbaa !14
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  store i64 %i.cd, ptr %i.by, align 8, !tbaa !16
  br label %._crit_edge.i.i38

._crit_edge.i.i38:                                ; preds = %.noexc48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37
  %i.ce = phi i64 [ %i.cd, %.noexc48 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37 ]
  %i.cf = phi ptr [ %i.cc, %.noexc48 ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37 ] ; 7 uses
  %.not7.i.i.i39 = icmp eq i64 %.idx, %.idx75
  br i1 %.not7.i.i.i39, label %bb.n, label %.lr.ph.i.i.i40.preheader

.lr.ph.i.i.i40.preheader:                         ; preds = %._crit_edge.i.i38
  %11 = sub i64 %.sroa.speculated, %2
  %12 = add i64 %11, 4611686018427387903
  %13 = and i64 %12, 4611686018427387903          ; 2 uses
  %i.cg = add nuw nsw i64 %13, 1                  ; 2 uses
  %min.iters.check97 = icmp samesign ult i64 %13, 23
  br i1 %min.iters.check97, label %.lr.ph.i.i.i40.preheader111, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph.i.i.i40.preheader
  %i.ch = add i64 %.idx75, -4
  %i.ci = sub i64 %i.ch, %.idx
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = getelementptr i8, ptr %i.cf, i64 %i.cj
  %scevgep92 = getelementptr i8, ptr %i.ck, i64 1
  %bound093 = icmp ult ptr %i.cf, %i.bx
  %bound194 = icmp ult ptr %i.bw, %scevgep92
  %found.conflict95 = and i1 %bound093, %bound194
  br i1 %found.conflict95, label %.lr.ph.i.i.i40.preheader111, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck91
  %n.vec99 = and i64 %i.cg, 9223372036854775800   ; 4 uses
  %i.cl = getelementptr i8, ptr %i.cf, i64 %n.vec99
  %i.cm = shl i64 %n.vec99, 2
  %i.cn = getelementptr i8, ptr %i.bw, i64 %i.cm
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next106, %vector.body100 ] ; 3 uses
  %next.gep102 = getelementptr i8, ptr %i.cf, i64 %index101 ; 2 uses
  %i.co = shl i64 %index101, 2
  %next.gep103 = getelementptr i8, ptr %i.bw, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep103, i64 16
  %wide.load104 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !808, !alias.scope !1367
  %wide.load105 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !808, !alias.scope !1367
  %i.cq = trunc <4 x i32> %wide.load104 to <4 x i8>
  %i.cr = trunc <4 x i32> %wide.load105 to <4 x i8>
  %i.cs = getelementptr i8, ptr %next.gep102, i64 4
  store <4 x i8> %i.cq, ptr %next.gep102, align 1, !tbaa !16, !alias.scope !1370, !noalias !1367
  store <4 x i8> %i.cr, ptr %i.cs, align 1, !tbaa !16, !alias.scope !1370, !noalias !1367
  %index.next106 = add nuw i64 %index101, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next106, %n.vec99
  br i1 %i.ct, label %middle.block107, label %vector.body100, !llvm.loop !1372

middle.block107:                                  ; preds = %vector.body100
  %cmp.n108 = icmp eq i64 %i.cg, %n.vec99
  br i1 %cmp.n108, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i44, label %.lr.ph.i.i.i40.preheader111

.lr.ph.i.i.i40.preheader111:                      ; preds = %vector.memcheck91, %.lr.ph.i.i.i40.preheader, %middle.block107
  %.09.i.i.i41.ph = phi ptr [ %i.cf, %vector.memcheck91 ], [ %i.cf, %.lr.ph.i.i.i40.preheader ], [ %i.cl, %middle.block107 ]
  %.068.i.i.i42.ph = phi ptr [ %i.bw, %vector.memcheck91 ], [ %i.bw, %.lr.ph.i.i.i40.preheader ], [ %i.cn, %middle.block107 ]
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.preheader111, %.lr.ph.i.i.i40
  %.09.i.i.i41 = phi ptr [ %i.cx, %.lr.ph.i.i.i40 ], [ %.09.i.i.i41.ph, %.lr.ph.i.i.i40.preheader111 ] ; 2 uses
  %.068.i.i.i42 = phi ptr [ %i.cw, %.lr.ph.i.i.i40 ], [ %.068.i.i.i42.ph, %.lr.ph.i.i.i40.preheader111 ] ; 2 uses
  %i.cu = load i32, ptr %.068.i.i.i42, align 4, !tbaa !808
  %i.cv = trunc i32 %i.cu to i8
  store i8 %i.cv, ptr %.09.i.i.i41, align 1, !tbaa !16
  %i.cw = getelementptr inbounds nuw i8, ptr %.068.i.i.i42, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.09.i.i.i41, i64 1
  %.not.i.i.i43 = icmp eq ptr %i.cw, %i.bx
  br i1 %.not.i.i.i43, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i44, label %.lr.ph.i.i.i40, !llvm.loop !1373

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i44: ; preds = %.lr.ph.i.i.i40, %middle.block107
  %.pre12.i.i45 = load i64, ptr %i.a, align 8, !tbaa !12
  %.pre13.i.i46 = load ptr, ptr %6, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i44, %._crit_edge.i.i38
  %i.cy = phi ptr [ %.pre13.i.i46, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i44 ], [ %i.cf, %._crit_edge.i.i38 ]
  %i.cz = phi i64 [ %.pre12.i.i45, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKwEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i44 ], [ %i.ce, %._crit_edge.i.i38 ] ; 2 uses
  store i64 %i.cz, ptr %i.bz, align 8, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz
  store i8 0, ptr %i.da, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.db = load i64, ptr %i.bz, align 8, !tbaa !17 ; 2 uses
  %i.dc = load i64, ptr %i.bh, align 8, !tbaa !17
  %i.dd = sub i64 4611686018427387903, %i.dc
  %i.de = icmp ult i64 %i.dd, %i.db
  br i1 %i.de, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i50

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
          to label %.noexc51 unwind label %bb.s

.noexc51:                                         ; preds = %bb.o
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i50: ; preds = %bb.n
  %i.df = load ptr, ptr %6, align 8, !tbaa !14
  %i.dg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.df, i64 noundef %i.db)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit53 unwind label %bb.s ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i50
  %i.dh = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.by
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit53
  %i.dj = load i64, ptr %i.by, align 8, !tbaa !16
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.ad
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.q
  %i.dp = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.p
  %.pn = phi { ptr, i32 } [ %i.dl, %bb.p ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.dm, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.z

bb.r:                                             ; preds = %.noexc.i47
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i50, %bb.o
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.by
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.s
  %i.dv = load i64, ptr %i.by, align 8, !tbaa !16
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.r
  %.pn29 = phi { ptr, i32 } [ %i.dr, %bb.r ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.ds, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.z

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.i
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !17
  %i.dz = and i64 %i.dy, -2
  %i.ea = icmp eq i64 %i.dz, 4611686018427387902
  br i1 %i.ea, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63: ; preds = %bb.t
  %i.eb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.254, i64 noundef 2) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !969
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63, %bb.c
  %i.ec = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit63 ], [ %i.c, %bb.c ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !970
  %i.ef = and i32 %i.ee, 262144
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost11regex_errorE, i64 16), ptr %7, align 8, !tbaa !33
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %1, ptr %i.eh, align 8, !tbaa !744
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %2, ptr %i.ei, align 8, !tbaa !750
  invoke void @_ZN5boost15throw_exceptionINS_11regex_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(32) %7) #29
          to label %.noexc64 unwind label %bb.x

.noexc64:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  ret void

bb.z:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.pn31 = phi { ptr, i32 } [ %i.ej, %bb.x ], [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  resume { ptr, i32 } %.pn31
}
end_hunk_4
