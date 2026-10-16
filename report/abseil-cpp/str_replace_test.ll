Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/str_replace_test?download=true
inline.NumInlined: 2144
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4absl12lts_2026052616strings_internal17FindSubstitutionsISt6vectorI4ContSaIS4_EEEES3_INS1_18ViableSubstitutionESaIS7_EESt17basic_string_viewIcSt11char_traitsIcEERKT_:bb.a
  %.not25.i.i = icmp ult i64 %i.bd, %.sroa.speculated.i.i.i.i.i
  br i1 %.not25.i.i, label %.critedge, label %bb.j, !llvm.loop !3

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.be = ptrtoint ptr %i.az to i64
  %i.bf = sub i64 %i.be, %i.w                     ; 3 uses
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %.critedge, label %bb.l

.loopexit.split:                                  ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split.us, %.loopexit.split
  %.us-phi = phi ptr [ %i.ai, %.loopexit.split ], [ %.promoted100, %.loopexit.split.us ] ; 2 uses
  %.us-phi110 = phi ptr [ %i.ah, %.loopexit.split ], [ %.promoted, %.loopexit.split.us ] ; 2 uses
  %.us-phi111 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  store ptr %.us-phi110, ptr %i.i, align 8
  store ptr %.us-phi, ptr %0, align 8
  br label %bb.s

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.bh = invoke { i64, ptr } @_Z3getILi1EESt17basic_string_viewIcSt11char_traitsIcEERK4Cont(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.048.0107)
          to label %bb.m unwind label %.loopexit80 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bi = extractvalue { i64, ptr } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bh, 1      ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %.sroa.speculated.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ar, ptr %.sroa.22.0..sroa_idx.i7.i, align 8, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.bj, ptr %.sroa.2.0..sroa_idx.i8.i, align 8, !tbaa !61
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %i.bf, ptr %i.bl, align 8, !tbaa !104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  store ptr %i.bm, ptr %i.x, align 8, !tbaa !102
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit

bb.o:                                             ; preds = %bb.m
  %i.bn = ptrtoint ptr %i.ag to i64
  %i.bo = ptrtoint ptr %i.ai to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.p, label %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  store ptr %i.ah, ptr %i.i, align 8
  store ptr %i.ai, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #24
          to label %.noexc40 unwind label %.loopexit.split-lp81

.noexc40:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.br = sdiv exact i64 %i.bp, 40                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 230584300921369395)
  %i.bv = select i1 %i.bt, i64 230584300921369395, i64 %i.bu ; 3 uses
  %.not.i.i26 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i26)
  %i.bw = mul nuw nsw i64 %i.bv, 40
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #22
          to label %.noexc41 unwind label %.loopexit80 ; 5 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp ; 5 uses
  store i64 %.sroa.speculated.i.i.i.i.i, ptr %i.by, align 8, !tbaa !68
  %.sroa.22.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.ar, ptr %.sroa.22.0..sroa_idx.i28.i, align 8, !tbaa !61
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.bi, ptr %i.bz, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %i.bj, ptr %.sroa.2.0..sroa_idx.i29.i, align 8, !tbaa !61
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i64 %i.bf, ptr %i.ca, align 8, !tbaa !104
  %.not10.i.i.i.i33 = icmp eq ptr %i.ai, %i.ag
  br i1 %.not10.i.i.i.i33, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i34

.lr.ph.i.i.i.i34:                                 ; preds = %.noexc41, %.lr.ph.i.i.i.i34
  %.012.i.i.i.i35 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i34 ], [ %i.bx, %.noexc41 ] ; 2 uses
  %.0911.i.i.i.i36 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i34 ], [ %i.ai, %.noexc41 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i35, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i36, i64 40, i1 false), !tbaa.struct !105, !alias.scope !610
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i36, i64 40 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i35, i64 40 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.cb, %i.ag
  br i1 %.not.i.i.i.i37, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i34, !llvm.loop !4

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i: ; preds = %.lr.ph.i.i.i.i34, %.noexc41
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bx, %.noexc41 ], [ %i.cc, %.lr.ph.i.i.i.i34 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.ai, null
  br i1 %.not.i37.i, label %.noexc24, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bp) #20
  br label %.noexc24

.noexc24:                                         ; preds = %bb.q, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  store ptr %i.cd, ptr %i.x, align 8, !tbaa !102
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.bv
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit: ; preds = %.noexc24, %bb.n
  %i.cf = phi ptr [ %i.cd, %.noexc24 ], [ %i.bm, %bb.n ] ; 4 uses
  %i.cg = phi ptr [ %i.bx, %.noexc24 ], [ %i.ai, %bb.n ] ; 6 uses
  %i.ch = phi ptr [ %i.ce, %.noexc24 ], [ %i.ah, %bb.n ] ; 3 uses
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = sdiv exact i64 %i.ck, 40                ; 2 uses
  %i.cm = add nsw i64 %i.cl, -1                   ; 2 uses
  %.not92 = icmp eq i64 %i.cm, 0
  br i1 %.not92, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit, %bb.r
  %i.cn = phi i64 [ %i.cz, %bb.r ], [ %i.cm, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit ] ; 3 uses
  %.093 = phi i64 [ %i.cn, %bb.r ], [ %i.cl, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit ]
  %i.co = getelementptr [40 x i8], ptr %i.cg, i64 %.093 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -80    ; 3 uses
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.cg, i64 %i.cn ; 4 uses
  %i.cr = getelementptr i8, ptr %i.co, i64 -48
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !104 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !104 ; 2 uses
  %.not.i25 = icmp eq i64 %i.cs, %i.cu
  %i.cv = icmp ult i64 %i.cs, %i.cu
  %i.cw = load i64, ptr %i.cp, align 8
  %i.cx = load i64, ptr %i.cq, align 8
  %i.cy = icmp ugt i64 %i.cw, %i.cx
  %.0.i = select i1 %.not.i25, i1 %i.cy, i1 %i.cv
  br i1 %.0.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.cq, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef nonnull align 8 dereferenceable(40) %i.cp, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cz = add i64 %i.cn, -1                       ; 2 uses
  %.not = icmp eq i64 %i.cz, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !606

.loopexit80:                                      ; preds = %bb.l, %_ZNKSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit82 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ah, ptr %i.i, align 8
  store ptr %i.ai, ptr %0, align 8
  br label %bb.s

.loopexit.split-lp81:                             ; preds = %bb.p
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.k, %bb.j, %bb.r, %.lr.ph, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.i, %.thread
  %i.da = phi ptr [ %i.cf, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit ], [ %i.ag, %.thread ], [ %i.ag, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ag, %bb.i ], [ %i.cf, %bb.r ], [ %i.cf, %.lr.ph ], [ %i.ag, %bb.j ], [ %i.ag, %bb.k ], [ %i.ag, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.db = phi ptr [ %i.cg, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit ], [ %i.ai, %.thread ], [ %i.ai, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ai, %bb.i ], [ %i.cg, %bb.r ], [ %i.cg, %.lr.ph ], [ %i.ai, %bb.j ], [ %i.ai, %bb.k ], [ %i.ai, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.dc = phi ptr [ %i.ch, %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEESA_RmEEERS3_DpOT_.exit ], [ %i.ah, %.thread ], [ %i.ah, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ah, %bb.i ], [ %i.ch, %bb.r ], [ %i.ch, %.lr.ph ], [ %i.ah, %bb.j ], [ %i.ah, %bb.k ], [ %i.ah, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.048.0107, i64 16 ; 2 uses
  %.not77 = icmp eq ptr %i.dd, %i.n
  br i1 %.not77, label %._crit_edge, label %.lr.ph108.split

bb.s:                                             ; preds = %.loopexit80, %.loopexit.split-lp81, %.loopexit, %.loopexit.split-lp
  %i.de = phi ptr [ %i.ag, %.loopexit.split-lp81 ], [ %.us-phi113, %.loopexit.split-lp ], [ %.us-phi110, %.loopexit ], [ %i.ah, %.loopexit80 ]
  %i.df = phi ptr [ %i.ai, %.loopexit.split-lp81 ], [ %.us-phi112, %.loopexit.split-lp ], [ %.us-phi, %.loopexit ], [ %i.ai, %.loopexit80 ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp83, %.loopexit.split-lp81 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.us-phi111, %.loopexit ], [ %lpad.loopexit82, %.loopexit80 ]
  %.not.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.di) #20
  br label %_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %bb.s, %bb.t
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, ptr } @_Z3getILi1EESt17basic_string_viewIcSt11char_traitsIcEERK4Cont(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::strings_internal::Splitter", align 8 ; 6 uses
  %2 = alloca %"class.absl::lts_20260526::strings_internal::SplitIterator", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %.sroa.0.0.copyload = load i64, ptr %0, align 8, !tbaa !68 ; 8 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !61 ; 5 uses
  store i64 %.sroa.0.0.copyload, ptr %1, align 8, !tbaa !68, !alias.scope !616
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !61, !alias.scope !616
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 58, ptr %i.a, align 8, !tbaa !32, !alias.scope !616
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i64 0, ptr %2, align 8, !tbaa !111, !alias.scope !617
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !112, !alias.scope !617
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !alias.scope !617
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !113, !alias.scope !617
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store i8 58, ptr %i.e, align 8, !tbaa !32, !alias.scope !617
  %i.f = icmp eq ptr %.sroa.2.0.copyload, null
  br i1 %i.f, label %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.thread, label %bb.b

_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.thread: ; preds = %bb.a
  store i32 2, ptr %i.b, align 8, !tbaa !112, !alias.scope !617
  store i64 %.sroa.0.0.copyload, ptr %2, align 8, !tbaa !111, !alias.scope !617
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = call { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i64 %.sroa.0.0.copyload, ptr nonnull %.sroa.2.0.copyload, i64 noundef 0) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %.sroa.0.0.copyload
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.b, align 8, !tbaa !112, !alias.scope !617
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load i64, ptr %2, align 8, !tbaa !111, !alias.scope !617 ; 5 uses
  %i.m = icmp ugt i64 %i.l, %.sroa.0.0.copyload
  br i1 %i.m, label %bb.e, label %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141, i64 noundef %i.l, i64 noundef %.sroa.0.0.copyload) #24
  unreachable

_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit: ; preds = %bb.d
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 %i.l ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.n, %i.p
  %i.r = sub nuw i64 %.sroa.0.0.copyload, %i.l
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.r, i64 %i.q) ; 3 uses
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.c, align 8, !tbaa !68, !alias.scope !617
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !61, !alias.scope !617
  %i.s = add i64 %i.l, %i.h
  %i.t = add i64 %i.s, %.sroa.speculated.i.i.i.i  ; 2 uses
  %.pre.a = load i32, ptr %i.b, align 8, !tbaa !112
  %3 = icmp eq i32 %.pre.a, 1
  store i64 %i.t, ptr %2, align 8, !tbaa !111, !alias.scope !617
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  br i1 %3, label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.thread, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  %.sroa.4.0..sroa_idx.i13 = phi ptr [ %.sroa.4.0..sroa_idx.i12, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.thread ], [ %.sroa.4.0..sroa_idx.i, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit ]
  %i.u = phi i64 [ %.sroa.0.0.copyload, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.thread ], [ %i.t, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit ]
  %4 = load ptr, ptr %i.d, align 8, !tbaa !113    ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %4, align 8, !tbaa !68 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !61 ; 3 uses
  %i.v = call { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 noundef %i.u)
  %i.w = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 8, !tbaa !112
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = load i64, ptr %2, align 8, !tbaa !111    ; 4 uses
  %i.aa = icmp ugt i64 %i.z, %.sroa.0.0.copyload.i.i
  br i1 %i.aa, label %bb.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141, i64 noundef %i.z, i64 noundef %.sroa.0.0.copyload.i.i) #24
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.h
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.z ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.z
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.ae)
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i13, align 8, !tbaa !61
  br label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, !llvm.loop !615

_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %.sroa.23.0.copyload = phi ptr [ %i.ac, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.o, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit ]
  %.sroa.02.0.copyload = phi i64 [ %.sroa.speculated.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %.sroa.speculated.i.i.i.i, %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.02.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.23.0.copyload, 1
  ret { i64, ptr } %.fca.1.insert
}

declare { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1), i64, ptr, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_str_replace_test.cc() #14 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.h, ptr %18, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.h, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 13, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 29
  store i8 0, ptr %i.j, align 1, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 11 uses
  store ptr %i.k, ptr %20, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  store i64 70, ptr %i.g, align 8, !tbaa !68
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc9.i unwind label %bb.h  ; 3 uses

.noexc9.i:                                        ; preds = %bb.a
  store ptr %i.l, ptr %20, align 8, !tbaa !36
  %i.m = load i64, ptr %i.g, align 8, !tbaa !68   ; 3 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.l, ptr noundef nonnull align 1 dereferenceable(70) @.str.2, i64 70, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.p = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.p, ptr %19, align 8, !tbaa !29
  %i.q = load ptr, ptr %20, align 8, !tbaa !36    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.k
  br i1 %i.r, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %.noexc9.i
  %i.s = load i64, ptr %i.n, align 8, !tbaa !31   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.u, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc9.i
  store ptr %i.q, ptr %19, align 8, !tbaa !36
  %i.v = load i64, ptr %i.k, align 8, !tbaa !32
  store i64 %i.v, ptr %i.p, align 8, !tbaa !32
  %.pre.i = load i64, ptr %i.n, align 8, !tbaa !31
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.w = phi i64 [ %i.s, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !31
  store ptr %i.k, ptr %20, align 8, !tbaa !36
  store i64 0, ptr %i.n, align 8, !tbaa !31
  store i8 0, ptr %i.k, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i32 29, ptr %i.y, align 8, !tbaa !619
  %i.z = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i
  %i.aa = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 29)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ab = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 29)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ac = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22
          to label %bb.f unwind label %bb.i       ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI33StrReplaceAll_OneReplacement_TestEE, i64 16), ptr %i.ac, align 8, !tbaa !15
  %i.ad = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %18, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %19, ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef nonnull %i.ac)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.p
  br i1 %i.af, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.p, align 8, !tbaa !32
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #20
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i

_ZN7testing8internal12CodeLocationD2Ev.exit.i:    ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ai = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.k
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i
  %i.ak = load i64, ptr %i.k, align 8, !tbaa !32
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  %i.am = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.h
  br i1 %i.an, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !32
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #20
  br label %__cxx_global_var_init.exit

bb.h:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %19, align 8, !tbaa !36   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.p
  br i1 %i.at, label %_ZN7testing8internal12CodeLocationD2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15.i: ; preds = %bb.i
  %i.au = load i64, ptr %i.p, align 8, !tbaa !32
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #20
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit17.i

_ZN7testing8internal12CodeLocationD2Ev.exit17.i:  ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15.i
  %i.aw = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.k
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit17.i
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !32
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i, %bb.h
  %.pn.pn.i = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i ], [ %i.ar, %_ZN7testing8internal12CodeLocationD2Ev.exit17.i ] ; 2 uses
  %i.ba = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.h
  br i1 %i.bb, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !32
  br label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i99
  %.sink221 = phi i64 [ %i.ml, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i99 ], [ %i.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i77 ], [ %i.ir, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i55 ], [ %i.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33 ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11 ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i ]
  %.sink = phi ptr [ %i.mj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i99 ], [ %i.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i77 ], [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i55 ], [ %i.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33 ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11 ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %.pn.i98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i99 ], [ %.pn.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i77 ], [ %.pn.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i55 ], [ %.pn.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i33 ], [ %.pn.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i11 ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i ], [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i ]
  %i.bd = add i64 %.sink221, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bd) #20
end_hunk_0
