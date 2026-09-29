Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/spdlog?download=true
inline.NumInlined: 6885
inline.NumDeleted: 3933
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_ZN6spdlog17pattern_formatter16compile_pattern_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.bu = load i8, ptr %storemerge36.i, align 1, !tbaa !64 ; 3 uses
  %i.bv = add i8 %i.bu, -48
  %isdigit18.i91 = icmp ult i8 %i.bv, 10
  br i1 %isdigit18.i91, label %.lr.ph.preheader, label %.lr.ph.i._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.preheader
  %i.bw = getelementptr i8, ptr %.sroa.064.2, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.bw, i64 %i.b
  %i.bx = sub i64 0, %.sroa.064.2110
  %scevgep111 = getelementptr i8, ptr %scevgep, i64 %i.bx ; 2 uses
  %i.by = zext nneg i8 %i.bu to i64
  %i.bz = mul nuw nsw i64 %i.bt, 10
  %i.ca = add nsw i64 %i.bz, -48
  %i.cb = add nsw i64 %i.ca, %i.by                ; 2 uses
  %storemerge.i163 = getelementptr inbounds nuw i8, ptr %.sroa.064.2, i64 2 ; 2 uses
  %.not.i22164 = icmp eq ptr %storemerge.i163, %i.e
  br i1 %.not.i22164, label %.critedge.i, label %.lr.ph.i.lr.ph, !llvm.loop !20

.lr.ph.i.lr.ph:                                   ; preds = %.lr.ph.preheader
  br label %.lr.ph.i, !llvm.loop !20

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %.lr.ph
  %storemerge.i166 = phi ptr [ %storemerge.i163, %.lr.ph.i.lr.ph ], [ %storemerge.i, %.lr.ph ] ; 4 uses
  %i.cc = phi i64 [ %i.cb, %.lr.ph.i.lr.ph ], [ %i.ci, %.lr.ph ] ; 2 uses
  %.sroa.064.392165 = phi ptr [ %storemerge36.i, %.lr.ph.i.lr.ph ], [ %storemerge.i166, %.lr.ph ]
  %i.cd = load i8, ptr %storemerge.i166, align 1, !tbaa !64 ; 3 uses
  %i.ce = add i8 %i.cd, -48
  %isdigit18.i = icmp ult i8 %i.ce, 10
  br i1 %isdigit18.i, label %.lr.ph, label %.lr.ph.i._crit_edge, !llvm.loop !20

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.cf = zext nneg i8 %i.cd to i64
  %i.cg = mul i64 %i.cc, 10
  %i.ch = add i64 %i.cg, -48
  %i.ci = add i64 %i.ch, %i.cf                    ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i166, i64 1 ; 2 uses
  %.not.i22 = icmp eq ptr %storemerge.i, %i.e
  br i1 %.not.i22, label %.lr.ph..critedge.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !20

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.064.3.lcssa = phi ptr [ %storemerge36.i, %.lr.ph.i.preheader ], [ %storemerge.i166, %.lr.ph.i ]
  %.03139.i.lcssa = phi i64 [ %i.bt, %.lr.ph.i.preheader ], [ %i.cc, %.lr.ph.i ] ; 2 uses
  %.pn38.i.lcssa = phi ptr [ %.sroa.064.2, %.lr.ph.i.preheader ], [ %.sroa.064.392165, %.lr.ph.i ]
  %.lcssa82 = phi i8 [ %i.bu, %.lr.ph.i.preheader ], [ %i.cd, %.lr.ph.i ]
  %i.cj = icmp eq i8 %.lcssa82, 33
  br i1 %i.cj, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %.lr.ph.i._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn38.i.lcssa, i64 2
  %i.cl = or disjoint i64 %.017.i, 4294967296
  br label %.critedge.i

.lr.ph..critedge.i.loopexit_crit_edge:            ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !20

.critedge.i:                                      ; preds = %.lr.ph.preheader, %.lr.ph..critedge.i.loopexit_crit_edge, %bb.n, %.lr.ph.i._crit_edge, %bb.m
  %.sroa.064.4 = phi ptr [ %storemerge36.i, %bb.m ], [ %.sroa.064.3.lcssa, %.lr.ph.i._crit_edge ], [ %i.ck, %bb.n ], [ %scevgep111, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %scevgep111, %.lr.ph.preheader ]
  %.03134.i = phi i64 [ %i.bt, %bb.m ], [ %.03139.i.lcssa, %.lr.ph.i._crit_edge ], [ %.03139.i.lcssa, %bb.n ], [ %i.ci, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %i.cb, %.lr.ph.preheader ]
  %.0.i = phi i64 [ %.017.i, %bb.m ], [ %.017.i, %.lr.ph.i._crit_edge ], [ %i.cl, %bb.n ], [ %.017.i, %.lr.ph..critedge.i.loopexit_crit_edge ], [ %.017.i, %.lr.ph.preheader ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.03134.i, i64 64)
  %.sroa.6.13.insert.insert.i = or disjoint i64 %.0.i, 1099511627776
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %bb.l, %bb.k, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %.sroa.064.5 = phi ptr [ %i.bl, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.064.2, %bb.k ], [ %.sroa.064.4, %.critedge.i ], [ %.sroa.064.2, %bb.l ] ; 4 uses
  %.sroa.6.0.i = phi i64 [ 0, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ 0, %bb.k ], [ %.sroa.6.13.insert.insert.i, %.critedge.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.027.0.i = phi i64 [ 0, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit ], [ 0, %bb.k ], [ %.sroa.speculated.i, %.critedge.i ], [ 0, %bb.l ] ; 2 uses
  %.not78 = icmp eq ptr %.sroa.064.5, %i.e
  br i1 %.not78, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = and i64 %.sroa.6.0.i, 1099511627776
  %.not80 = icmp eq i64 %i.cm, 0
  %i.cn = load i8, ptr %.sroa.064.5, align 1, !tbaa !64 ; 2 uses
  br i1 %.not80, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %i.cn, i64 %.sroa.027.0.i, i64 %.sroa.6.0.i)
          to label %bb.y unwind label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.s:                                             ; preds = %bb.p
  invoke void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %i.cn, i64 %.sroa.027.0.i, i64 %.sroa.6.0.i)
          to label %bb.y unwind label %bb.r

bb.t:                                             ; preds = %bb.b
  %.not76 = icmp eq ptr %i.s, null
  br i1 %.not76, label %bb.u, label %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113

._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113: ; preds = %bb.t
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.pre114 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.cp = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #45
          to label %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge unwind label %bb.v ; 8 uses

._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge: ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.cp, i8 0, i64 56, i1 false), !noalias !455
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details19aggregate_formatterE, i64 16), ptr %i.cp, align 16, !tbaa !62, !noalias !455
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 40 ; 2 uses
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !63, !noalias !455
  store ptr %i.cp, ptr %2, align 8, !tbaa !235
  %.pre112 = load i8, ptr %.sroa.064.098, align 1, !tbaa !64
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge
  %i.ct = phi ptr [ %i.cp, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.q, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ]
  %i.cu = phi ptr [ %i.cp, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.r, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ]
  %i.cv = phi ptr [ %i.cr, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %.pre114, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ] ; 2 uses
  %i.cw = phi i8 [ %.pre112, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.t, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ]
  %i.cx = phi ptr [ %i.cp, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge ], [ %i.s, %._ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit_crit_edge113 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !59 ; 4 uses
  %i.db = add i64 %i.da, 1                        ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 40 ; 2 uses
  %i.dd = icmp eq ptr %i.cv, %i.dc
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.de = icmp ult i64 %i.da, 16
  tail call void @llvm.assume(i1 %i.de)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.df = load i64, ptr %i.dc, align 8, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.dg = phi i64 [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.dh = icmp ugt i64 %i.db, %i.dg
  br i1 %i.dh, label %bb.w, label %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i64 noundef %i.da, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc26 unwind label %bb.x

.noexc26:                                         ; preds = %bb.w
  %.pre.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !60
  br label %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit

_ZN6spdlog7details19aggregate_formatter6add_chEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, %.noexc26
  %i.di = phi ptr [ %.pre.i.i.i, %.noexc26 ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.da
  store i8 %i.cw, ptr %i.dj, align 1, !tbaa !64
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !59
  %i.dk = load ptr, ptr %i.cy, align 8, !tbaa !60
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.db
  store i8 0, ptr %i.dl, align 1, !tbaa !64
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.y:                                             ; preds = %bb.q, %bb.s, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit
  %i.dn = phi ptr [ %i.ct, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ %i.bk, %bb.s ], [ %i.bk, %bb.q ] ; 2 uses
  %i.do = phi ptr [ %i.cu, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ null, %bb.s ], [ null, %bb.q ]
  %i.dp = phi ptr [ %i.cx, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ null, %bb.s ], [ null, %bb.q ]
  %.sroa.064.1 = phi ptr [ %.sroa.064.098, %_ZN6spdlog7details19aggregate_formatter6add_chEc.exit ], [ %.sroa.064.5, %bb.s ], [ %.sroa.064.5, %bb.q ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.064.1, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.dq, %i.e
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !440

.critedge:                                        ; preds = %bb.y, %bb.o
  %i.dr = phi ptr [ %i.dn, %bb.y ], [ %i.bk, %bb.o ] ; 5 uses
  %.not79 = icmp eq ptr %i.dr, null
  br i1 %.not79, label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53, label %bb.z

bb.z:                                             ; preds = %.critedge
  store ptr null, ptr %2, align 8, !tbaa !235
  %i.ds = load ptr, ptr %i.h, align 8, !tbaa !232 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !236
  %.not.i.i27 = icmp eq ptr %i.ds, %i.du
  br i1 %.not.i.i27, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = ptrtoint ptr %i.dr to i64
  store i64 %i.dv, ptr %i.ds, align 8, !tbaa !234
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dw, ptr %i.h, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53

bb.ab:                                            ; preds = %bb.z
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !231 ; 10 uses
  %i.dy = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.dz = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.ea = sub i64 %i.dy, %i.dz                    ; 3 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %bb.ac, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc40 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48

.noexc40:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28: ; preds = %bb.ab
  %i.ec = ashr exact i64 %i.ea, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i.i29, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = tail call i64 @llvm.umin.i64(i64 %i.ed, i64 1152921504606846975)
  %i.eg = select i1 %i.ee, i64 1152921504606846975, i64 %i.ef ; 3 uses
  %.not.i.i.i.i30 = icmp ne i64 %i.eg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.eh = shl nuw nsw i64 %i.eg, 3
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #45
          to label %.noexc41 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48 ; 10 uses

.noexc41:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ea
  %i.ek = ptrtoint ptr %i.dr to i64
  store i64 %i.ek, ptr %i.ej, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i31 = icmp eq ptr %i.dx, %i.ds
  br i1 %.not10.i.i.i.i.i.i.i31, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32.preheader

.lr.ph.i.i.i.i.i.i.i32.preheader:                 ; preds = %.noexc41
  %i.el = add i64 %i.dy, -8
  %i.em = sub i64 %i.el, %i.dz                    ; 3 uses
  %i.en = lshr i64 %i.em, 3
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check181 = icmp ult i64 %i.em, 136
  br i1 %min.iters.check181, label %.lr.ph.i.i.i.i.i.i.i32.preheader195, label %vector.memcheck174

vector.memcheck174:                               ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader
  %i.ep = and i64 %i.em, -8
  %i.eq = add i64 %i.ep, 8                        ; 2 uses
  %scevgep175 = getelementptr i8, ptr %i.ei, i64 %i.eq
  %scevgep176 = getelementptr i8, ptr %i.dx, i64 %i.eq
  %bound0177 = icmp ult ptr %i.ei, %scevgep176
  %bound1178 = icmp ult ptr %i.dx, %scevgep175
  %found.conflict179 = and i1 %bound0177, %bound1178
  br i1 %found.conflict179, label %.lr.ph.i.i.i.i.i.i.i32.preheader195, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck174
  %n.vec183 = and i64 %i.eo, 4611686018427387900  ; 3 uses
  %i.er = shl i64 %n.vec183, 3                    ; 2 uses
  %i.es = getelementptr i8, ptr %i.ei, i64 %i.er  ; 2 uses
  %i.et = getelementptr i8, ptr %i.dx, i64 %i.er
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.eu = shl i64 %index185, 3                    ; 2 uses
  %next.gep186 = getelementptr i8, ptr %i.ei, i64 %i.eu ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.dx, i64 %i.eu ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.ev = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <2 x i64>, ptr %next.gep187, align 8, !tbaa !234, !alias.scope !458, !noalias !456
  %wide.load189 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !234, !alias.scope !458, !noalias !456
  %i.ew = getelementptr i8, ptr %next.gep186, i64 16
  store <2 x i64> %wide.load188, ptr %next.gep186, align 8, !tbaa !234, !alias.scope !459, !noalias !458
  store <2 x i64> %wide.load189, ptr %i.ew, align 8, !tbaa !234, !alias.scope !459, !noalias !458
  %i.ex = getelementptr i8, ptr %next.gep187, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep187, align 8, !tbaa !234, !alias.scope !458, !noalias !456
  store <2 x ptr> splat (ptr null), ptr %i.ex, align 8, !tbaa !234, !alias.scope !458, !noalias !456
  %index.next190 = add nuw i64 %index185, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.ey, label %middle.block191, label %vector.body184, !llvm.loop !447

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.eo, %n.vec183
  br i1 %cmp.n192, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32.preheader195

.lr.ph.i.i.i.i.i.i.i32.preheader195:              ; preds = %vector.memcheck174, %.lr.ph.i.i.i.i.i.i.i32.preheader, %middle.block191
  %.012.i.i.i.i.i.i.i33.ph = phi ptr [ %i.ei, %vector.memcheck174 ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.es, %middle.block191 ]
  %.0911.i.i.i.i.i.i.i34.ph = phi ptr [ %i.dx, %vector.memcheck174 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i32.preheader ], [ %i.et, %middle.block191 ]
  br label %.lr.ph.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i32:                           ; preds = %.lr.ph.i.i.i.i.i.i.i32.preheader195, %.lr.ph.i.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i.i33 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.012.i.i.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader195 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i34 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i.i32 ], [ %.0911.i.i.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i.i.i32.preheader195 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.ez = load i64, ptr %.0911.i.i.i.i.i.i.i34, align 8, !tbaa !234, !alias.scope !457, !noalias !456
  store i64 %i.ez, ptr %.012.i.i.i.i.i.i.i33, align 8, !tbaa !234, !alias.scope !456, !noalias !457
  store ptr null, ptr %.0911.i.i.i.i.i.i.i34, align 8, !tbaa !234, !alias.scope !457, !noalias !456
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i33, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.fa, %i.ds
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i32, !llvm.loop !448

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i32, %middle.block191, %.noexc41
  %.0.lcssa.i.i.i.i.i.i.i37 = phi ptr [ %i.ei, %.noexc41 ], [ %i.es, %middle.block191 ], [ %i.fb, %.lr.ph.i.i.i.i.i.i.i32 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i37, i64 8
  %.not.i23.i.i.i38 = icmp eq ptr %i.dx, null
  br i1 %.not.i23.i.i.i38, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36
  tail call void @_ZdlPv(ptr noundef nonnull %i.dx) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39: ; preds = %bb.ad, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i36
  store ptr %i.ei, ptr %i.f, align 8, !tbaa !231
  store ptr %i.fc, ptr %i.h, align 8, !tbaa !232
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eg
  store ptr %i.fd, ptr %i.dt, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i28, %bb.ac
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %i.dr, align 8, !tbaa !62
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  tail call void %i.fh(ptr noundef nonnull align 8 dereferenceable(24) %i.dr) #37, !inline_history !19
  br label %bb.ae

_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev.exit53: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE5clearEv.exit, %bb.aa, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i39, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21, %bb.r, %bb.v, %bb.x, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48
  %.pn14 = phi { ptr, i32 } [ %i.fe, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit48 ], [ %i.co, %bb.r ], [ %lpad.phi, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit21 ], [ %i.dm, %bb.x ], [ %i.cs, %bb.v ]
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn14
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !176 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #37, !inline_history !460
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #44
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !197
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !198
  %i.l = shl i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !197    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.m) #44
  br label %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIcSt4pairIKcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIcESt4hashIcENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !231    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !234 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #37, !inline_history !461
  br label %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !231
  br label %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #44
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6spdlog17pattern_formatterC2ENS_17pattern_time_typeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::unique_ptr.105", align 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6spdlog17pattern_formatterE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !63
  store i16 11045, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.c, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.d, align 2, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !63
  %i.g = load ptr, ptr %2, align 8, !tbaa !60     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %._crit_edge.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !60
  %i.n = load i64, ptr %i.h, align 8, !tbaa !64
  store i64 %i.n, ptr %i.f, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.p, ptr %i.q, align 8, !tbaa !59
  store ptr %i.h, ptr %2, align 8, !tbaa !60
  store i64 0, ptr %i.o, align 8, !tbaa !59
  store i8 0, ptr %i.h, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %1, ptr %i.r, align 8, !tbaa !222
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.s, align 4, !tbaa !223
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !197
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 1, ptr %i.x, align 8, !tbaa !198
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.z, align 8, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.ac = invoke noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #45
          to label %bb.b unwind label %bb.g       ; 14 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details14full_formatterE, i64 16), ptr %i.ac, align 8, !tbaa !62, !noalias !472
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 0, ptr %i.ae, align 8, !tbaa !237, !noalias !472
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 0, ptr %i.ai, align 8, !noalias !472
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ah, align 8, !tbaa !66, !noalias !472
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !67, !noalias !472
  store i64 250, ptr %i.ag, align 8, !tbaa !68, !noalias !472
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 320
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !noalias !472
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details13mdc_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ak, align 8, !tbaa !62, !noalias !472
  store ptr null, ptr %3, align 8, !tbaa !239
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !232 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !236
  %.not.i.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = ptrtoint ptr %i.ac to i64
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !234
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !231 ; 10 uses
  %i.at = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc8 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13

.noexc8:                                          ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ax = ashr exact i64 %i.av, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #45
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13 ; 10 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av
  %i.bf = ptrtoint ptr %i.ac to i64
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.an
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc9
  %i.bg = add i64 %i.at, -8
  %i.bh = sub i64 %i.bg, %i.au                    ; 3 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bk = and i64 %i.bh, -8
  %i.bl = add i64 %i.bk, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bd, i64 %i.bl
  %scevgep29 = getelementptr i8, ptr %i.as, i64 %i.bl
  %bound0 = icmp ult ptr %i.bd, %scevgep29
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bd, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.as, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bd, i64 %i.bp ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.as, i64 %i.bp ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.bq = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !234, !alias.scope !475, !noalias !473
  %wide.load31 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !234, !alias.scope !475, !noalias !473
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !476, !noalias !475
  store <2 x i64> %wide.load31, ptr %i.br, align 8, !tbaa !234, !alias.scope !476, !noalias !475
  %i.bs = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep30, align 8, !tbaa !234, !alias.scope !475, !noalias !473
  store <2 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !234, !alias.scope !475, !noalias !473
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !470

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.i.preheader33:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader33 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.bu = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !474, !noalias !473
  store i64 %i.bu, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !473, !noalias !474
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !474, !noalias !473
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !471

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.noexc9 ], [ %i.bn, %middle.block ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.as) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.bd, ptr %i.u, align 8, !tbaa !231
  store ptr %i.bx, ptr %i.am, align 8, !tbaa !232
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.by, ptr %i.ao, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #37, !inline_history !19
  call void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #37
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ca, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit13 ], [ %i.bz, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  call void @_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.v) #37
  call void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #37
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !60  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.f
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.ce) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.b
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cg) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !234
  store i64 %i.e, ptr %i.b, align 8, !tbaa !234
  store ptr null, ptr %1, align 8, !tbaa !234
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !232
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !231    ; 10 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #45 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  %i.t = load i64, ptr %1, align 8, !tbaa !234
  store i64 %i.t, ptr %i.s, align 8, !tbaa !234
  store ptr null, ptr %1, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = add i64 %i.h, -8
  %i.v = sub i64 %i.u, %i.i                       ; 3 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.y = and i64 %i.v, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.z
  %scevgep4 = getelementptr i8, ptr %i.g, i64 %i.z
  %bound0 = icmp ult ptr %i.r, %scevgep4
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.g, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.g, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.ae = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !234, !alias.scope !487, !noalias !485
  %wide.load6 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !234, !alias.scope !487, !noalias !485
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !488, !noalias !487
  store <2 x i64> %wide.load6, ptr %i.af, align 8, !tbaa !234, !alias.scope !488, !noalias !487
  %i.ag = getelementptr i8, ptr %next.gep5, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep5, align 8, !tbaa !234, !alias.scope !487, !noalias !485
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !234, !alias.scope !487, !noalias !485
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !483

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.preheader8:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.ai = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !486, !noalias !485
  store i64 %i.ai, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !485, !noalias !486
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !486, !noalias !485
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !484

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !231
  store ptr %i.al, ptr %i.a, align 8, !tbaa !232
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.am, ptr %i.c, align 8, !tbaa !236
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEEvDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !239    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN6spdlog7details14full_formatterEEclEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.c) #37
  br label %_ZNKSt14default_deleteIN6spdlog7details14full_formatterEEclEPS2_.exit

_ZNKSt14default_deleteIN6spdlog7details14full_formatterEEclEPS2_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #44
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN6spdlog7details14full_formatterEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6spdlog17pattern_formatter5cloneEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<char, std::pair<const char, std::unique_ptr<spdlog::custom_flag_formatter>>, std::allocator<std::pair<const char, std::unique_ptr<spdlog::custom_flag_formatter>>>, std::__detail::_Select1st, std::equal_to<char>, std::hash<char>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %3 = alloca %"class.std::unordered_map.45", align 8 ; 16 uses
  %4 = alloca %"class.std::unique_ptr.116", align 8 ; 8 uses
  %5 = alloca %"class.std::unique_ptr.86", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !197
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !198
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.017.023 = load ptr, ptr %i.f, align 8, !tbaa !176 ; 2 uses
  %.not24 = icmp eq ptr %.sroa.017.023, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZN6spdlog7details11make_uniqueINS_17pattern_formatterEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_17pattern_time_typeESA_St13unordered_mapIcSt10unique_ptrINS_21custom_flag_formatterESt14default_deleteISG_EESt4hashIcESt8equal_toIcESaISt4pairIKcSJ_EEEEEESF_IT_SH_IST_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.86") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %_ZNSt10unique_ptrIN6spdlog17pattern_formatterESt14default_deleteIS1_EED2Ev.exit unwind label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit
  %.sroa.017.025 = phi ptr [ %.sroa.017.023, %.lr.ph ], [ %.sroa.017.0, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.017.025, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.017.025, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !201  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.116") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.k, align 8, !tbaa !64    ; 3 uses
  %i.r = sext i8 %i.q to i64                      ; 2 uses
  %i.s = load i64, ptr %i.b, align 8, !tbaa !198  ; 2 uses
  %i.t = urem i64 %i.r, %i.s                      ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !197
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !228  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !176  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i8, ptr %i.y, align 1, !tbaa !64
  %i.aa = icmp eq i8 %i.q, %i.z
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %bb.f
  %i.ab = icmp eq i8 %i.q, %i.ae
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !21

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.020.i.i.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.x, %bb.d ]
  %i.ac = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !176 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !64  ; 2 uses
  %i.af = sext i8 %i.ae to i64
  %i.ag = urem i64 %i.af, %i.s
  %.not19.i.i.i.i = icmp eq i64 %i.ag, %i.t
  br i1 %.not19.i.i.i.i, label %bb.e, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !21

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.f
  br label %.loopexit.i.i, !llvm.loop !21

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %3, ptr %2, align 8, !tbaa !490
  %i.ah = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45
          to label %.noexc unwind label %bb.i     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.ah, align 8, !tbaa !176
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i8, ptr %i.k, align 8, !tbaa !64
end_hunk_0
begin_hunk_1_@_ZN6spdlog17pattern_formatter15handle_padspec_ERN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_:bb.a
  %i.l = add i8 %i.k, -48
  %isdigit1855 = icmp ult i8 %i.l, 10
  br i1 %isdigit1855, label %.lr.ph58, label %.lr.ph._crit_edge

.lr.ph:                                           ; preds = %.lr.ph58
  %i.m = load i8, ptr %storemerge, align 1, !tbaa !64 ; 3 uses
  %i.n = add i8 %i.m, -48
  %isdigit18 = icmp ult i8 %i.n, 10
  br i1 %isdigit18, label %.lr.ph58, label %.lr.ph._crit_edge, !llvm.loop !20

.lr.ph58:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.o = phi i8 [ %i.m, %.lr.ph ], [ %i.k, %.lr.ph.preheader ]
  %.0313957 = phi i64 [ %i.s, %.lr.ph ], [ %i.j, %.lr.ph.preheader ]
  %storemerge4056 = phi ptr [ %storemerge, %.lr.ph ], [ %storemerge36, %.lr.ph.preheader ] ; 2 uses
  %i.p = zext nneg i8 %i.o to i64
  %i.q = mul i64 %.0313957, 10
  %i.r = add i64 %i.q, -48
  %i.s = add i64 %i.r, %i.p                       ; 3 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge4056, i64 1 ; 4 uses
  store ptr %storemerge, ptr %0, align 8, !tbaa !510
  %.not = icmp eq ptr %storemerge, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !20

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.03139.lcssa = phi i64 [ %i.j, %.lr.ph.preheader ], [ %i.s, %.lr.ph ] ; 2 uses
  %.pn38.lcssa = phi ptr [ %i.e, %.lr.ph.preheader ], [ %storemerge4056, %.lr.ph ]
  %.lcssa = phi i8 [ %i.k, %.lr.ph.preheader ], [ %i.m, %.lr.ph ]
  %i.t = icmp eq i8 %.lcssa, 33
  br i1 %i.t, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %.pn38.lcssa, i64 2
  store ptr %i.u, ptr %0, align 8, !tbaa !510
  %i.v = or disjoint i64 %.017, 4294967296
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph58, %bb.f, %.lr.ph._crit_edge, %bb.g
  %.03134 = phi i64 [ %.03139.lcssa, %bb.g ], [ %.03139.lcssa, %.lr.ph._crit_edge ], [ %i.j, %bb.f ], [ %i.s, %.lr.ph58 ]
  %.0 = phi i64 [ %i.v, %bb.g ], [ %.017, %.lr.ph._crit_edge ], [ %.017, %bb.f ], [ %.017, %.lr.ph58 ]
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.03134, i64 64)
  %.sroa.6.13.insert.mask = and i64 %.0, -280375465082881
  %.sroa.6.13.insert.insert = or disjoint i64 %.sroa.6.13.insert.mask, 1099511627776
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.a, %.critedge
  %.sroa.6.0 = phi i64 [ %.sroa.6.13.insert.insert, %.critedge ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.sroa.027.0 = phi i64 [ %.sroa.speculated, %.critedge ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %1, i64 %2, i64 %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::details::padding_info", align 16 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.116", align 8 ; 8 uses
  %6 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %7 = alloca %"class.std::unique_ptr.105", align 8 ; 8 uses
  %8 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %9 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %10 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %11 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %12 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %13 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %14 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %15 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %16 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %17 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %18 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %19 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %20 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %21 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %22 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %23 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %24 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %25 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %26 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %27 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %28 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %29 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %30 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %31 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %32 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %33 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %34 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %35 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %36 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %37 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %38 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %39 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %40 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %41 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %42 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %43 = alloca %"class.std::unique_ptr.517", align 8 ; 8 uses
  %44 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %45 = alloca %"class.std::unique_ptr.525", align 8 ; 8 uses
  %46 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %47 = alloca %"class.std::unique_ptr.533", align 8 ; 8 uses
  %48 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %49 = alloca %"class.std::unique_ptr.541", align 8 ; 8 uses
  %50 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %51 = alloca %"class.std::unique_ptr.126", align 8 ; 12 uses
  %52 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %53 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %54 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  store i64 %2, ptr %4, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load i64, ptr %i.b, align 8, !tbaa !224
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !176 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.f = load i8, ptr %i.e, align 1, !tbaa !64
  %i.g = icmp eq i8 %1, %i.f
  br i1 %i.g, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %bb.c, !llvm.loop !24

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = sext i8 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load i64, ptr %i.j, align 8, !tbaa !198  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !228  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !176  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 1, !tbaa !64
  %i.s = icmp eq i8 %1, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.t = icmp eq i8 %1, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !21

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !176 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 1, !tbaa !64    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = urem i64 %i.x, %i.k
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !21

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !21

_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !201 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.116") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  %i.ae = load ptr, ptr %5, align 8, !tbaa !201   ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.af, ptr noundef nonnull align 16 dereferenceable(14) %4, i64 14, i1 false), !tbaa.struct !247
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !201
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !232 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !236
  %.not.i.i10 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i10, label %bb.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit
  %i.al = ptrtoint ptr %i.ae to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !234
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !231 ; 10 uses
  %i.ao = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #45
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16 ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.ba = ptrtoint ptr %i.ae to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.bb = add i64 %i.ao, -8
  %i.bc = sub i64 %i.bb, %i.ap                    ; 3 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1029, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bf = and i64 %i.bc, -8
  %i.bg = add i64 %i.bf, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bg
  %scevgep957 = getelementptr i8, ptr %i.an, i64 %i.bg
  %bound0 = icmp ult ptr %i.ay, %scevgep957
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1029, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ay, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.an, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bk ; 2 uses
  %next.gep958 = getelementptr i8, ptr %i.an, i64 %i.bk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.bl = getelementptr i8, ptr %next.gep958, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep958, align 8, !tbaa !234, !alias.scope !625, !noalias !623
  %wide.load959 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !234, !alias.scope !625, !noalias !623
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !626, !noalias !625
  store <2 x i64> %wide.load959, ptr %i.bm, align 8, !tbaa !234, !alias.scope !626, !noalias !625
  %i.bn = getelementptr i8, ptr %next.gep958, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep958, align 8, !tbaa !234, !alias.scope !625, !noalias !623
  store <2 x ptr> splat (ptr null), ptr %i.bn, align 8, !tbaa !234, !alias.scope !625, !noalias !623
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !517

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1029

.lr.ph.i.i.i.i.i.i.i.preheader1029:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1029, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1029 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1029 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.bp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !624, !noalias !623
  store i64 %i.bp, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !623, !noalias !624
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !624, !noalias !623
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !518

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc12 ], [ %i.bi, %middle.block ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #44
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.k
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !231
  store ptr %i.bs, ptr %i.ah, align 8, !tbaa !232
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bt, ptr %i.aj, align 8, !tbaa !236
  %.pre = load ptr, ptr %5, align 8, !tbaa !201   ; 3 uses
  %.not.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.bu = load ptr, ptr %.pre, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #37, !inline_history !22
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #37, !inline_history !19
  %i.cb = load ptr, ptr %5, align 8, !tbaa !201   ; 3 uses
  %.not.i17 = icmp eq ptr %i.cb, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(24) %i.cb) #37, !inline_history !22
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.fi

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  switch i8 %1, label %bb.eq [
    i8 43, label %bb.l
    i8 110, label %bb.o
    i8 108, label %bb.r
    i8 76, label %bb.u
    i8 116, label %bb.x
    i8 118, label %bb.aa
    i8 97, label %bb.ad
    i8 65, label %bb.ag
    i8 98, label %bb.aj
    i8 104, label %bb.aj
    i8 66, label %bb.ao
    i8 99, label %bb.ar
    i8 67, label %bb.au
    i8 89, label %bb.ax
    i8 68, label %bb.ba
    i8 120, label %bb.ba
    i8 109, label %bb.bf
    i8 100, label %bb.bi
    i8 72, label %bb.bl
    i8 73, label %bb.bo
    i8 77, label %bb.br
    i8 83, label %bb.bu
    i8 101, label %bb.bx
    i8 102, label %bb.ca
    i8 70, label %bb.cd
    i8 69, label %bb.cg
    i8 112, label %bb.cj
    i8 114, label %bb.cm
    i8 82, label %bb.cp
    i8 84, label %bb.cs
    i8 88, label %bb.cs
    i8 122, label %bb.cx
    i8 80, label %bb.da
    i8 94, label %bb.dd
    i8 36, label %bb.dg
    i8 64, label %bb.dj
    i8 115, label %bb.dm
    i8 103, label %bb.dp
    i8 35, label %bb.ds
    i8 33, label %bb.dv
    i8 37, label %bb.dy
    i8 117, label %bb.eb
    i8 105, label %bb.ee
    i8 111, label %bb.eh
    i8 79, label %bb.ek
    i8 38, label %bb.en
  ]

bb.l:                                             ; preds = %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @_ZN6spdlog7details11make_uniqueINS0_14full_formatterEJRNS0_12padding_infoEEEESt10unique_ptrIT_St14default_deleteIS6_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.105") align 8 %7, ptr noundef nonnull align 8 dereferenceable(14) %4)
  %i.cg = load ptr, ptr %7, align 8, !tbaa !239
  store ptr null, ptr %7, align 8, !tbaa !239
  store ptr %i.cg, ptr %6, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %6, align 8, !tbaa !234   ; 3 uses
  %.not.i20 = icmp eq ptr %i.ch, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21: ; preds = %bb.m
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22: ; preds = %bb.m, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21
  call void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.cl, align 4, !tbaa !223
  br label %bb.fh

bb.n:                                             ; preds = %bb.l
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %6, align 8, !tbaa !234   ; 3 uses
  %.not.i23 = icmp eq ptr %i.cn, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i24

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i24: ; preds = %bb.n
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
end_hunk_1
begin_hunk_2_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE:bb.a
  br i1 %.not.i68, label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i69

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i69: ; preds = %bb.y
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !62
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(24) %i.ee) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i69, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.fh

bb.z:                                             ; preds = %bb.x
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %i.ej = load ptr, ptr %11, align 8, !tbaa !234  ; 3 uses
  %.not.i72 = icmp eq ptr %i.ej, null
  br i1 %.not.i72, label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73: ; preds = %bb.z
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !62
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(24) %i.ej) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77

_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.fi

bb.aa:                                            ; preds = %.loopexit
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.eo = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !631 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %2, ptr %i.ep, align 8, !tbaa !70, !noalias !631
  %.sroa.2.0..sroa_idx.i.i.i81 = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i81, align 8, !noalias !631
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11v_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.eo, align 8, !tbaa !62, !noalias !631
  store ptr %i.eo, ptr %12, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load ptr, ptr %12, align 8, !tbaa !234  ; 3 uses
  %.not.i82 = icmp eq ptr %i.eq, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83: ; preds = %bb.ab
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !62
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(24) %i.eq) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.fh

bb.ac:                                            ; preds = %bb.aa
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = load ptr, ptr %12, align 8, !tbaa !234  ; 3 uses
  %.not.i86 = icmp eq ptr %i.ev, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87: ; preds = %bb.ac
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !62
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(24) %i.ev) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.fi

bb.ad:                                            ; preds = %.loopexit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.fa = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !632 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %2, ptr %i.fb, align 8, !tbaa !70, !noalias !632
  %.sroa.2.0..sroa_idx.i.i.i95 = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i95, align 8, !noalias !632
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11a_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.fa, align 8, !tbaa !62, !noalias !632
  store ptr %i.fa, ptr %13, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fc = load ptr, ptr %13, align 8, !tbaa !234  ; 3 uses
  %.not.i96 = icmp eq ptr %i.fc, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97: ; preds = %bb.ae
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !62
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(24) %i.fc) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fg, align 4, !tbaa !223
  br label %bb.fh

bb.af:                                            ; preds = %bb.ad
  %i.fh = landingpad { ptr, i32 }
          cleanup
  %i.fi = load ptr, ptr %13, align 8, !tbaa !234  ; 3 uses
  %.not.i100 = icmp eq ptr %i.fi, null
  br i1 %.not.i100, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101: ; preds = %bb.af
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !62
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(24) %i.fi) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.fi

bb.ag:                                            ; preds = %.loopexit
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.fn = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !633 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 %2, ptr %i.fo, align 8, !tbaa !70, !noalias !633
  %.sroa.2.0..sroa_idx.i.i.i109 = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i109, align 8, !noalias !633
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11A_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.fn, align 8, !tbaa !62, !noalias !633
  store ptr %i.fn, ptr %14, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fp = load ptr, ptr %14, align 8, !tbaa !234  ; 3 uses
  %.not.i110 = icmp eq ptr %i.fp, null
  br i1 %.not.i110, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111: ; preds = %bb.ah
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !62
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(24) %i.fp) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ft, align 4, !tbaa !223
  br label %bb.fh

bb.ai:                                            ; preds = %bb.ag
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %14, align 8, !tbaa !234  ; 3 uses
  %.not.i114 = icmp eq ptr %i.fv, null
  br i1 %.not.i114, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115: ; preds = %bb.ai
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !62
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(24) %i.fv) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.fi

bb.aj:                                            ; preds = %.loopexit, %.loopexit
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ga = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !634 ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i64 %2, ptr %i.gb, align 8, !tbaa !70, !noalias !634
  %.sroa.2.0..sroa_idx.i.i.i123 = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i123, align 8, !noalias !634
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11b_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.ga, align 8, !tbaa !62, !noalias !634
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !232 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !236
  %.not.i.i124 = icmp eq ptr %i.gd, %i.gf
  br i1 %.not.i.i124, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gg = ptrtoint ptr %i.ga to i64
  store i64 %i.gg, ptr %i.gd, align 8, !tbaa !234
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gh, ptr %i.gc, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !231 ; 10 uses
  %i.gj = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gl = sub i64 %i.gj, %i.gk                    ; 3 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775800
  br i1 %i.gm, label %bb.am, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc137 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149

.noexc137:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125: ; preds = %bb.al
  %i.gn = ashr exact i64 %i.gl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i126 = tail call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i.i126, %i.gn ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.gn
  %i.gq = tail call i64 @llvm.umin.i64(i64 %i.go, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 3 uses
  %.not.i.i.i.i127 = icmp ne i64 %i.gr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i127)
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #45
          to label %.noexc138 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149 ; 10 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gl
  %i.gv = ptrtoint ptr %i.ga to i64
  store i64 %i.gv, ptr %i.gu, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i128 = icmp eq ptr %i.gi, %i.gd
  br i1 %.not10.i.i.i.i.i.i.i128, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader

.lr.ph.i.i.i.i.i.i.i129.preheader:                ; preds = %.noexc138
  %i.gw = add i64 %i.gj, -8
  %i.gx = sub i64 %i.gw, %i.gk                    ; 3 uses
  %i.gy = lshr i64 %i.gx, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check1010 = icmp ult i64 %i.gx, 136
  br i1 %min.iters.check1010, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024, label %vector.memcheck1003

vector.memcheck1003:                              ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader
  %i.ha = and i64 %i.gx, -8
  %i.hb = add i64 %i.ha, 8                        ; 2 uses
  %scevgep1004 = getelementptr i8, ptr %i.gt, i64 %i.hb
  %scevgep1005 = getelementptr i8, ptr %i.gi, i64 %i.hb
  %bound01006 = icmp ult ptr %i.gt, %scevgep1005
  %bound11007 = icmp ult ptr %i.gi, %scevgep1004
  %found.conflict1008 = and i1 %bound01006, %bound11007
  br i1 %found.conflict1008, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024, label %vector.ph1011

vector.ph1011:                                    ; preds = %vector.memcheck1003
  %n.vec1012 = and i64 %i.gz, 4611686018427387900 ; 3 uses
  %i.hc = shl i64 %n.vec1012, 3                   ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gt, i64 %i.hc  ; 2 uses
  %i.he = getelementptr i8, ptr %i.gi, i64 %i.hc
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %vector.ph1011
  %index1014 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1019, %vector.body1013 ] ; 2 uses
  %i.hf = shl i64 %index1014, 3                   ; 2 uses
  %next.gep1015 = getelementptr i8, ptr %i.gt, i64 %i.hf ; 2 uses
  %next.gep1016 = getelementptr i8, ptr %i.gi, i64 %i.hf ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.hg = getelementptr i8, ptr %next.gep1016, i64 16
  %wide.load1017 = load <2 x i64>, ptr %next.gep1016, align 8, !tbaa !234, !alias.scope !637, !noalias !635
  %wide.load1018 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !234, !alias.scope !637, !noalias !635
  %i.hh = getelementptr i8, ptr %next.gep1015, i64 16
  store <2 x i64> %wide.load1017, ptr %next.gep1015, align 8, !tbaa !234, !alias.scope !638, !noalias !637
  store <2 x i64> %wide.load1018, ptr %i.hh, align 8, !tbaa !234, !alias.scope !638, !noalias !637
  %i.hi = getelementptr i8, ptr %next.gep1016, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1016, align 8, !tbaa !234, !alias.scope !637, !noalias !635
  store <2 x ptr> splat (ptr null), ptr %i.hi, align 8, !tbaa !234, !alias.scope !637, !noalias !635
  %index.next1019 = add nuw i64 %index1014, 4     ; 2 uses
  %i.hj = icmp eq i64 %index.next1019, %n.vec1012
  br i1 %i.hj, label %middle.block1020, label %vector.body1013, !llvm.loop !541

middle.block1020:                                 ; preds = %vector.body1013
  %cmp.n1021 = icmp eq i64 %i.gz, %n.vec1012
  br i1 %cmp.n1021, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024

.lr.ph.i.i.i.i.i.i.i129.preheader1024:            ; preds = %vector.memcheck1003, %.lr.ph.i.i.i.i.i.i.i129.preheader, %middle.block1020
  %.012.i.i.i.i.i.i.i130.ph = phi ptr [ %i.gt, %vector.memcheck1003 ], [ %i.gt, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.hd, %middle.block1020 ]
  %.0911.i.i.i.i.i.i.i131.ph = phi ptr [ %i.gi, %vector.memcheck1003 ], [ %i.gi, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.he, %middle.block1020 ]
  br label %.lr.ph.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i129:                          ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader1024, %.lr.ph.i.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i.i130 = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.012.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1024 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i131 = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.0911.i.i.i.i.i.i.i131.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1024 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.hk = load i64, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !234, !alias.scope !636, !noalias !635
  store i64 %i.hk, ptr %.012.i.i.i.i.i.i.i130, align 8, !tbaa !234, !alias.scope !635, !noalias !636
  store ptr null, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !234, !alias.scope !636, !noalias !635
  %i.hl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i131, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i130, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %i.hl, %i.gd
  br i1 %.not.i.i.i.i.i.i.i132, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129, !llvm.loop !542

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133: ; preds = %.lr.ph.i.i.i.i.i.i.i129, %middle.block1020, %.noexc138
  %.0.lcssa.i.i.i.i.i.i.i134 = phi ptr [ %i.gt, %.noexc138 ], [ %i.hd, %middle.block1020 ], [ %i.hm, %.lr.ph.i.i.i.i.i.i.i129 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i134, i64 8
  %.not.i23.i.i.i135 = icmp eq ptr %i.gi, null
  br i1 %.not.i23.i.i.i135, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  tail call void @_ZdlPv(ptr noundef nonnull %i.gi) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136: ; preds = %bb.an, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  store ptr %i.gt, ptr %i.fz, align 8, !tbaa !231
  store ptr %i.hn, ptr %i.gc, align 8, !tbaa !232
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  store ptr %i.ho, ptr %i.ge, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, %bb.ak
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.hp, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149: ; preds = %bb.am, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %i.hr = load ptr, ptr %i.ga, align 8, !tbaa !62
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  tail call void %i.ht(ptr noundef nonnull align 8 dereferenceable(24) %i.ga) #37, !inline_history !19
  br label %bb.fi

bb.ao:                                            ; preds = %.loopexit
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.hv = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !639 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %2, ptr %i.hw, align 8, !tbaa !70, !noalias !639
  %.sroa.2.0..sroa_idx.i.i.i153 = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i153, align 8, !noalias !639
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11B_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.hv, align 8, !tbaa !62, !noalias !639
  store ptr %i.hv, ptr %15, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hx = load ptr, ptr %15, align 8, !tbaa !234  ; 3 uses
  %.not.i154 = icmp eq ptr %i.hx, null
  br i1 %.not.i154, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155: ; preds = %bb.ap
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !62
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(24) %i.hx) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ib, align 4, !tbaa !223
  br label %bb.fh

bb.aq:                                            ; preds = %bb.ao
  %i.ic = landingpad { ptr, i32 }
          cleanup
  %i.id = load ptr, ptr %15, align 8, !tbaa !234  ; 3 uses
  %.not.i158 = icmp eq ptr %i.id, null
  br i1 %.not.i158, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159: ; preds = %bb.aq
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !62
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(24) %i.id) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.fi

bb.ar:                                            ; preds = %.loopexit
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.ii = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !640 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i64 %2, ptr %i.ij, align 8, !tbaa !70, !noalias !640
  %.sroa.2.0..sroa_idx.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i167, align 8, !noalias !640
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11c_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.ii, align 8, !tbaa !62, !noalias !640
  store ptr %i.ii, ptr %16, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ik = load ptr, ptr %16, align 8, !tbaa !234  ; 3 uses
  %.not.i168 = icmp eq ptr %i.ik, null
  br i1 %.not.i168, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169: ; preds = %bb.as
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !62
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(24) %i.ik) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.io, align 4, !tbaa !223
  br label %bb.fh

bb.at:                                            ; preds = %bb.ar
  %i.ip = landingpad { ptr, i32 }
          cleanup
  %i.iq = load ptr, ptr %16, align 8, !tbaa !234  ; 3 uses
  %.not.i172 = icmp eq ptr %i.iq, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173: ; preds = %bb.at
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !62
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(24) %i.iq) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.fi

bb.au:                                            ; preds = %.loopexit
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.iv = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !641 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store i64 %2, ptr %i.iw, align 8, !tbaa !70, !noalias !641
  %.sroa.2.0..sroa_idx.i.i.i181 = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i181, align 8, !noalias !641
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11C_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.iv, align 8, !tbaa !62, !noalias !641
  store ptr %i.iv, ptr %17, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ix = load ptr, ptr %17, align 8, !tbaa !234  ; 3 uses
  %.not.i182 = icmp eq ptr %i.ix, null
  br i1 %.not.i182, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183: ; preds = %bb.av
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !62
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(24) %i.ix) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.jb, align 4, !tbaa !223
  br label %bb.fh

bb.aw:                                            ; preds = %bb.au
  %i.jc = landingpad { ptr, i32 }
          cleanup
  %i.jd = load ptr, ptr %17, align 8, !tbaa !234  ; 3 uses
  %.not.i186 = icmp eq ptr %i.jd, null
  br i1 %.not.i186, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187: ; preds = %bb.aw
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !62
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(24) %i.jd) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.fi

bb.ax:                                            ; preds = %.loopexit
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.ji = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !642 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store i64 %2, ptr %i.jj, align 8, !tbaa !70, !noalias !642
  %.sroa.2.0..sroa_idx.i.i.i195 = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i195, align 8, !noalias !642
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11Y_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.ji, align 8, !tbaa !62, !noalias !642
  store ptr %i.ji, ptr %18, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jk = load ptr, ptr %18, align 8, !tbaa !234  ; 3 uses
  %.not.i196 = icmp eq ptr %i.jk, null
  br i1 %.not.i196, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197: ; preds = %bb.ay
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !62
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(24) %i.jk) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.jo, align 4, !tbaa !223
  br label %bb.fh

bb.az:                                            ; preds = %bb.ax
  %i.jp = landingpad { ptr, i32 }
          cleanup
  %i.jq = load ptr, ptr %18, align 8, !tbaa !234  ; 3 uses
  %.not.i200 = icmp eq ptr %i.jq, null
  br i1 %.not.i200, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201: ; preds = %bb.az
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !62
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(24) %i.jq) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %bb.fi

bb.ba:                                            ; preds = %.loopexit, %.loopexit
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.jv = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !643 ; 7 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i64 %2, ptr %i.jw, align 8, !tbaa !70, !noalias !643
  %.sroa.2.0..sroa_idx.i.i.i209 = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i209, align 8, !noalias !643
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11D_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.jv, align 8, !tbaa !62, !noalias !643
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !232 ; 6 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !236
  %.not.i.i210 = icmp eq ptr %i.jy, %i.ka
  br i1 %.not.i.i210, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kb = ptrtoint ptr %i.jv to i64
  store i64 %i.kb, ptr %i.jy, align 8, !tbaa !234
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store ptr %i.kc, ptr %i.jx, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.bc:                                            ; preds = %bb.ba
  %i.kd = load ptr, ptr %i.ju, align 8, !tbaa !231 ; 10 uses
  %i.ke = ptrtoint ptr %i.jy to i64               ; 2 uses
  %i.kf = ptrtoint ptr %i.kd to i64               ; 2 uses
  %i.kg = sub i64 %i.ke, %i.kf                    ; 3 uses
  %i.kh = icmp eq i64 %i.kg, 9223372036854775800
  br i1 %i.kh, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc223 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235

.noexc223:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211: ; preds = %bb.bc
  %i.ki = ashr exact i64 %i.kg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i212 = tail call i64 @llvm.umax.i64(i64 %i.ki, i64 1)
  %i.kj = add nsw i64 %.sroa.speculated.i.i.i.i212, %i.ki ; 2 uses
  %i.kk = icmp ult i64 %i.kj, %i.ki
  %i.kl = tail call i64 @llvm.umin.i64(i64 %i.kj, i64 1152921504606846975)
  %i.km = select i1 %i.kk, i64 1152921504606846975, i64 %i.kl ; 3 uses
  %.not.i.i.i.i213 = icmp ne i64 %i.km, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i213)
  %i.kn = shl nuw nsw i64 %i.km, 3
  %i.ko = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kn) #45
          to label %.noexc224 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235 ; 10 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kg
  %i.kq = ptrtoint ptr %i.jv to i64
  store i64 %i.kq, ptr %i.kp, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i214 = icmp eq ptr %i.kd, %i.jy
  br i1 %.not10.i.i.i.i.i.i.i214, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader

.lr.ph.i.i.i.i.i.i.i215.preheader:                ; preds = %.noexc224
  %i.kr = add i64 %i.ke, -8
  %i.ks = sub i64 %i.kr, %i.kf                    ; 3 uses
  %i.kt = lshr i64 %i.ks, 3
  %i.ku = add nuw nsw i64 %i.kt, 1                ; 2 uses
  %min.iters.check989 = icmp ult i64 %i.ks, 136
  br i1 %min.iters.check989, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025, label %vector.memcheck982

vector.memcheck982:                               ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader
  %i.kv = and i64 %i.ks, -8
  %i.kw = add i64 %i.kv, 8                        ; 2 uses
  %scevgep983 = getelementptr i8, ptr %i.ko, i64 %i.kw
  %scevgep984 = getelementptr i8, ptr %i.kd, i64 %i.kw
  %bound0985 = icmp ult ptr %i.ko, %scevgep984
  %bound1986 = icmp ult ptr %i.kd, %scevgep983
  %found.conflict987 = and i1 %bound0985, %bound1986
  br i1 %found.conflict987, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025, label %vector.ph990

vector.ph990:                                     ; preds = %vector.memcheck982
  %n.vec991 = and i64 %i.ku, 4611686018427387900  ; 3 uses
  %i.kx = shl i64 %n.vec991, 3                    ; 2 uses
  %i.ky = getelementptr i8, ptr %i.ko, i64 %i.kx  ; 2 uses
  %i.kz = getelementptr i8, ptr %i.kd, i64 %i.kx
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph990
  %index993 = phi i64 [ 0, %vector.ph990 ], [ %index.next998, %vector.body992 ] ; 2 uses
  %i.la = shl i64 %index993, 3                    ; 2 uses
  %next.gep994 = getelementptr i8, ptr %i.ko, i64 %i.la ; 2 uses
  %next.gep995 = getelementptr i8, ptr %i.kd, i64 %i.la ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.lb = getelementptr i8, ptr %next.gep995, i64 16
  %wide.load996 = load <2 x i64>, ptr %next.gep995, align 8, !tbaa !234, !alias.scope !646, !noalias !644
  %wide.load997 = load <2 x i64>, ptr %i.lb, align 8, !tbaa !234, !alias.scope !646, !noalias !644
  %i.lc = getelementptr i8, ptr %next.gep994, i64 16
  store <2 x i64> %wide.load996, ptr %next.gep994, align 8, !tbaa !234, !alias.scope !647, !noalias !646
  store <2 x i64> %wide.load997, ptr %i.lc, align 8, !tbaa !234, !alias.scope !647, !noalias !646
  %i.ld = getelementptr i8, ptr %next.gep995, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep995, align 8, !tbaa !234, !alias.scope !646, !noalias !644
  store <2 x ptr> splat (ptr null), ptr %i.ld, align 8, !tbaa !234, !alias.scope !646, !noalias !644
  %index.next998 = add nuw i64 %index993, 4       ; 2 uses
  %i.le = icmp eq i64 %index.next998, %n.vec991
  br i1 %i.le, label %middle.block999, label %vector.body992, !llvm.loop !559

middle.block999:                                  ; preds = %vector.body992
  %cmp.n1000 = icmp eq i64 %i.ku, %n.vec991
  br i1 %cmp.n1000, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025

.lr.ph.i.i.i.i.i.i.i215.preheader1025:            ; preds = %vector.memcheck982, %.lr.ph.i.i.i.i.i.i.i215.preheader, %middle.block999
  %.012.i.i.i.i.i.i.i216.ph = phi ptr [ %i.ko, %vector.memcheck982 ], [ %i.ko, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.ky, %middle.block999 ]
  %.0911.i.i.i.i.i.i.i217.ph = phi ptr [ %i.kd, %vector.memcheck982 ], [ %i.kd, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.kz, %middle.block999 ]
  br label %.lr.ph.i.i.i.i.i.i.i215

.lr.ph.i.i.i.i.i.i.i215:                          ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader1025, %.lr.ph.i.i.i.i.i.i.i215
  %.012.i.i.i.i.i.i.i216 = phi ptr [ %i.lh, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.012.i.i.i.i.i.i.i216.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1025 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i217 = phi ptr [ %i.lg, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.0911.i.i.i.i.i.i.i217.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1025 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.lf = load i64, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !234, !alias.scope !645, !noalias !644
  store i64 %i.lf, ptr %.012.i.i.i.i.i.i.i216, align 8, !tbaa !234, !alias.scope !644, !noalias !645
  store ptr null, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !234, !alias.scope !645, !noalias !644
  %i.lg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i217, i64 8 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i216, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i218 = icmp eq ptr %i.lg, %i.jy
  br i1 %.not.i.i.i.i.i.i.i218, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215, !llvm.loop !560

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219: ; preds = %.lr.ph.i.i.i.i.i.i.i215, %middle.block999, %.noexc224
  %.0.lcssa.i.i.i.i.i.i.i220 = phi ptr [ %i.ko, %.noexc224 ], [ %i.ky, %middle.block999 ], [ %i.lh, %.lr.ph.i.i.i.i.i.i.i215 ]
  %i.li = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i220, i64 8
  %.not.i23.i.i.i221 = icmp eq ptr %i.kd, null
  br i1 %.not.i23.i.i.i221, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  tail call void @_ZdlPv(ptr noundef nonnull %i.kd) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222: ; preds = %bb.be, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  store ptr %i.ko, ptr %i.ju, align 8, !tbaa !231
  store ptr %i.li, ptr %i.jx, align 8, !tbaa !232
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.km
  store ptr %i.lj, ptr %i.jz, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, %bb.bb
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.lk, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235: ; preds = %bb.bd, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.ll = landingpad { ptr, i32 }
          cleanup
  %i.lm = load ptr, ptr %i.jv, align 8, !tbaa !62
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8
  tail call void %i.lo(ptr noundef nonnull align 8 dereferenceable(24) %i.jv) #37, !inline_history !19
  br label %bb.fi

bb.bf:                                            ; preds = %.loopexit
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  %i.lq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !648 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store i64 %2, ptr %i.lr, align 8, !tbaa !70, !noalias !648
  %.sroa.2.0..sroa_idx.i.i.i239 = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i239, align 8, !noalias !648
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11m_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.lq, align 8, !tbaa !62, !noalias !648
  store ptr %i.lq, ptr %19, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.lp, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ls = load ptr, ptr %19, align 8, !tbaa !234  ; 3 uses
  %.not.i240 = icmp eq ptr %i.ls, null
  br i1 %.not.i240, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241: ; preds = %bb.bg
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !62
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(24) %i.ls) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.lw, align 4, !tbaa !223
  br label %bb.fh

bb.bh:                                            ; preds = %bb.bf
  %i.lx = landingpad { ptr, i32 }
          cleanup
  %i.ly = load ptr, ptr %19, align 8, !tbaa !234  ; 3 uses
  %.not.i244 = icmp eq ptr %i.ly, null
  br i1 %.not.i244, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245: ; preds = %bb.bh
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !62
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(24) %i.ly) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br label %bb.fi

bb.bi:                                            ; preds = %.loopexit
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  %i.md = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !649 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i64 %2, ptr %i.me, align 8, !tbaa !70, !noalias !649
  %.sroa.2.0..sroa_idx.i.i.i253 = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i253, align 8, !noalias !649
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11d_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.md, align 8, !tbaa !62, !noalias !649
  store ptr %i.md, ptr %20, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.mc, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mf = load ptr, ptr %20, align 8, !tbaa !234  ; 3 uses
  %.not.i254 = icmp eq ptr %i.mf, null
  br i1 %.not.i254, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255: ; preds = %bb.bj
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !62
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(24) %i.mf) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.mj, align 4, !tbaa !223
  br label %bb.fh

bb.bk:                                            ; preds = %bb.bi
  %i.mk = landingpad { ptr, i32 }
          cleanup
  %i.ml = load ptr, ptr %20, align 8, !tbaa !234  ; 3 uses
  %.not.i258 = icmp eq ptr %i.ml, null
  br i1 %.not.i258, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259: ; preds = %bb.bk
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !62
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(24) %i.ml) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263

_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  br label %bb.fi

bb.bl:                                            ; preds = %.loopexit
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.mq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !650 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store i64 %2, ptr %i.mr, align 8, !tbaa !70, !noalias !650
  %.sroa.2.0..sroa_idx.i.i.i267 = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i267, align 8, !noalias !650
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11H_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.mq, align 8, !tbaa !62, !noalias !650
  store ptr %i.mq, ptr %21, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.mp, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
end_hunk_2
begin_hunk_3_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE:bb.a
_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i367: ; preds = %bb.ch
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !62
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(24) %i.qc) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i367, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.fh

bb.ci:                                            ; preds = %bb.cg
  %i.qg = landingpad { ptr, i32 }
          cleanup
  %i.qh = load ptr, ptr %28, align 8, !tbaa !234  ; 3 uses
  %.not.i370 = icmp eq ptr %i.qh, null
  br i1 %.not.i370, label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371: ; preds = %bb.ci
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !62
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8
  call void %i.qk(ptr noundef nonnull align 8 dereferenceable(24) %i.qh) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375

_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.fi

bb.cj:                                            ; preds = %.loopexit
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37
  %i.qm = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !658 ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store i64 %2, ptr %i.qn, align 8, !tbaa !70, !noalias !658
  %.sroa.2.0..sroa_idx.i.i.i379 = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i379, align 8, !noalias !658
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11p_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.qm, align 8, !tbaa !62, !noalias !658
  store ptr %i.qm, ptr %29, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ql, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.qo = load ptr, ptr %29, align 8, !tbaa !234  ; 3 uses
  %.not.i380 = icmp eq ptr %i.qo, null
  br i1 %.not.i380, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381: ; preds = %bb.ck
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !62
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(24) %i.qo) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.qs, align 4, !tbaa !223
  br label %bb.fh

bb.cl:                                            ; preds = %bb.cj
  %i.qt = landingpad { ptr, i32 }
          cleanup
  %i.qu = load ptr, ptr %29, align 8, !tbaa !234  ; 3 uses
  %.not.i384 = icmp eq ptr %i.qu, null
  br i1 %.not.i384, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385: ; preds = %bb.cl
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !62
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(24) %i.qu) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br label %bb.fi

bb.cm:                                            ; preds = %.loopexit
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37
  %i.qz = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !659 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  store i64 %2, ptr %i.ra, align 8, !tbaa !70, !noalias !659
  %.sroa.2.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i393, align 8, !noalias !659
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11r_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.qz, align 8, !tbaa !62, !noalias !659
  store ptr %i.qz, ptr %30, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.qy, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.rb = load ptr, ptr %30, align 8, !tbaa !234  ; 3 uses
  %.not.i394 = icmp eq ptr %i.rb, null
  br i1 %.not.i394, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395: ; preds = %bb.cn
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !62
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(24) %i.rb) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.rf, align 4, !tbaa !223
  br label %bb.fh

bb.co:                                            ; preds = %bb.cm
  %i.rg = landingpad { ptr, i32 }
          cleanup
  %i.rh = load ptr, ptr %30, align 8, !tbaa !234  ; 3 uses
  %.not.i398 = icmp eq ptr %i.rh, null
  br i1 %.not.i398, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399: ; preds = %bb.co
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !62
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(24) %i.rh) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  br label %bb.fi

bb.cp:                                            ; preds = %.loopexit
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  %i.rm = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !660 ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  store i64 %2, ptr %i.rn, align 8, !tbaa !70, !noalias !660
  %.sroa.2.0..sroa_idx.i.i.i407 = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i407, align 8, !noalias !660
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11R_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.rm, align 8, !tbaa !62, !noalias !660
  store ptr %i.rm, ptr %31, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.rl, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ro = load ptr, ptr %31, align 8, !tbaa !234  ; 3 uses
  %.not.i408 = icmp eq ptr %i.ro, null
  br i1 %.not.i408, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409: ; preds = %bb.cq
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !62
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8
  call void %i.rr(ptr noundef nonnull align 8 dereferenceable(24) %i.ro) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.rs, align 4, !tbaa !223
  br label %bb.fh

bb.cr:                                            ; preds = %bb.cp
  %i.rt = landingpad { ptr, i32 }
          cleanup
  %i.ru = load ptr, ptr %31, align 8, !tbaa !234  ; 3 uses
  %.not.i412 = icmp eq ptr %i.ru, null
  br i1 %.not.i412, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413: ; preds = %bb.cr
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !62
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(24) %i.ru) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  br label %bb.fi

bb.cs:                                            ; preds = %.loopexit, %.loopexit
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.rz = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !661 ; 7 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store i64 %2, ptr %i.sa, align 8, !tbaa !70, !noalias !661
  %.sroa.2.0..sroa_idx.i.i.i421 = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i421, align 8, !noalias !661
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11T_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.rz, align 8, !tbaa !62, !noalias !661
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !232 ; 6 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !236
  %.not.i.i422 = icmp eq ptr %i.sc, %i.se
  br i1 %.not.i.i422, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sf = ptrtoint ptr %i.rz to i64
  store i64 %i.sf, ptr %i.sc, align 8, !tbaa !234
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store ptr %i.sg, ptr %i.sb, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.cu:                                            ; preds = %bb.cs
  %i.sh = load ptr, ptr %i.ry, align 8, !tbaa !231 ; 10 uses
  %i.si = ptrtoint ptr %i.sc to i64               ; 2 uses
  %i.sj = ptrtoint ptr %i.sh to i64               ; 2 uses
  %i.sk = sub i64 %i.si, %i.sj                    ; 3 uses
  %i.sl = icmp eq i64 %i.sk, 9223372036854775800
  br i1 %i.sl, label %bb.cv, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc435 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447

.noexc435:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423: ; preds = %bb.cu
  %i.sm = ashr exact i64 %i.sk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i424 = tail call i64 @llvm.umax.i64(i64 %i.sm, i64 1)
  %i.sn = add nsw i64 %.sroa.speculated.i.i.i.i424, %i.sm ; 2 uses
  %i.so = icmp ult i64 %i.sn, %i.sm
  %i.sp = tail call i64 @llvm.umin.i64(i64 %i.sn, i64 1152921504606846975)
  %i.sq = select i1 %i.so, i64 1152921504606846975, i64 %i.sp ; 3 uses
  %.not.i.i.i.i425 = icmp ne i64 %i.sq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i425)
  %i.sr = shl nuw nsw i64 %i.sq, 3
  %i.ss = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sr) #45
          to label %.noexc436 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447 ; 10 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.sk
  %i.su = ptrtoint ptr %i.rz to i64
  store i64 %i.su, ptr %i.st, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i426 = icmp eq ptr %i.sh, %i.sc
  br i1 %.not10.i.i.i.i.i.i.i426, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader

.lr.ph.i.i.i.i.i.i.i427.preheader:                ; preds = %.noexc436
  %i.sv = add i64 %i.si, -8
  %i.sw = sub i64 %i.sv, %i.sj                    ; 3 uses
  %i.sx = lshr i64 %i.sw, 3
  %i.sy = add nuw nsw i64 %i.sx, 1                ; 2 uses
  %min.iters.check968 = icmp ult i64 %i.sw, 136
  br i1 %min.iters.check968, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027, label %vector.memcheck961

vector.memcheck961:                               ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader
  %i.sz = and i64 %i.sw, -8
  %i.ta = add i64 %i.sz, 8                        ; 2 uses
  %scevgep962 = getelementptr i8, ptr %i.ss, i64 %i.ta
  %scevgep963 = getelementptr i8, ptr %i.sh, i64 %i.ta
  %bound0964 = icmp ult ptr %i.ss, %scevgep963
  %bound1965 = icmp ult ptr %i.sh, %scevgep962
  %found.conflict966 = and i1 %bound0964, %bound1965
  br i1 %found.conflict966, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027, label %vector.ph969

vector.ph969:                                     ; preds = %vector.memcheck961
  %n.vec970 = and i64 %i.sy, 4611686018427387900  ; 3 uses
  %i.tb = shl i64 %n.vec970, 3                    ; 2 uses
  %i.tc = getelementptr i8, ptr %i.ss, i64 %i.tb  ; 2 uses
  %i.td = getelementptr i8, ptr %i.sh, i64 %i.tb
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %vector.ph969
  %index972 = phi i64 [ 0, %vector.ph969 ], [ %index.next977, %vector.body971 ] ; 2 uses
  %i.te = shl i64 %index972, 3                    ; 2 uses
  %next.gep973 = getelementptr i8, ptr %i.ss, i64 %i.te ; 2 uses
  %next.gep974 = getelementptr i8, ptr %i.sh, i64 %i.te ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.tf = getelementptr i8, ptr %next.gep974, i64 16
  %wide.load975 = load <2 x i64>, ptr %next.gep974, align 8, !tbaa !234, !alias.scope !664, !noalias !662
  %wide.load976 = load <2 x i64>, ptr %i.tf, align 8, !tbaa !234, !alias.scope !664, !noalias !662
  %i.tg = getelementptr i8, ptr %next.gep973, i64 16
  store <2 x i64> %wide.load975, ptr %next.gep973, align 8, !tbaa !234, !alias.scope !665, !noalias !664
  store <2 x i64> %wide.load976, ptr %i.tg, align 8, !tbaa !234, !alias.scope !665, !noalias !664
  %i.th = getelementptr i8, ptr %next.gep974, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep974, align 8, !tbaa !234, !alias.scope !664, !noalias !662
  store <2 x ptr> splat (ptr null), ptr %i.th, align 8, !tbaa !234, !alias.scope !664, !noalias !662
  %index.next977 = add nuw i64 %index972, 4       ; 2 uses
  %i.ti = icmp eq i64 %index.next977, %n.vec970
  br i1 %i.ti, label %middle.block978, label %vector.body971, !llvm.loop !595

middle.block978:                                  ; preds = %vector.body971
  %cmp.n979 = icmp eq i64 %i.sy, %n.vec970
  br i1 %cmp.n979, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027

.lr.ph.i.i.i.i.i.i.i427.preheader1027:            ; preds = %vector.memcheck961, %.lr.ph.i.i.i.i.i.i.i427.preheader, %middle.block978
  %.012.i.i.i.i.i.i.i428.ph = phi ptr [ %i.ss, %vector.memcheck961 ], [ %i.ss, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.tc, %middle.block978 ]
  %.0911.i.i.i.i.i.i.i429.ph = phi ptr [ %i.sh, %vector.memcheck961 ], [ %i.sh, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.td, %middle.block978 ]
  br label %.lr.ph.i.i.i.i.i.i.i427

.lr.ph.i.i.i.i.i.i.i427:                          ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader1027, %.lr.ph.i.i.i.i.i.i.i427
  %.012.i.i.i.i.i.i.i428 = phi ptr [ %i.tl, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.012.i.i.i.i.i.i.i428.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1027 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i429 = phi ptr [ %i.tk, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.0911.i.i.i.i.i.i.i429.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1027 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.tj = load i64, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !234, !alias.scope !663, !noalias !662
  store i64 %i.tj, ptr %.012.i.i.i.i.i.i.i428, align 8, !tbaa !234, !alias.scope !662, !noalias !663
  store ptr null, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !234, !alias.scope !663, !noalias !662
  %i.tk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 8 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i430 = icmp eq ptr %i.tk, %i.sc
  br i1 %.not.i.i.i.i.i.i.i430, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427, !llvm.loop !596

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431: ; preds = %.lr.ph.i.i.i.i.i.i.i427, %middle.block978, %.noexc436
  %.0.lcssa.i.i.i.i.i.i.i432 = phi ptr [ %i.ss, %.noexc436 ], [ %i.tc, %middle.block978 ], [ %i.tl, %.lr.ph.i.i.i.i.i.i.i427 ]
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i432, i64 8
  %.not.i23.i.i.i433 = icmp eq ptr %i.sh, null
  br i1 %.not.i23.i.i.i433, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  tail call void @_ZdlPv(ptr noundef nonnull %i.sh) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434: ; preds = %bb.cw, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  store ptr %i.ss, ptr %i.ry, align 8, !tbaa !231
  store ptr %i.tm, ptr %i.sb, align 8, !tbaa !232
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.sq
  store ptr %i.tn, ptr %i.sd, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, %bb.ct
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.to, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447: ; preds = %bb.cv, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.tp = landingpad { ptr, i32 }
          cleanup
  %i.tq = load ptr, ptr %i.rz, align 8, !tbaa !62
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8
  tail call void %i.ts(ptr noundef nonnull align 8 dereferenceable(24) %i.rz) #37, !inline_history !19
  br label %bb.fi

bb.cx:                                            ; preds = %.loopexit
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #37
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.tv = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #45, !noalias !666 ; 7 uses
  %i.tw = load i32, ptr %i.tu, align 8, !tbaa !193, !noalias !666
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  store i64 %2, ptr %i.tx, align 8, !tbaa !70, !noalias !666
  %.sroa.2.0..sroa_idx.i.i.i451 = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i451, align 8, !noalias !666
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11z_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.tv, align 8, !tbaa !62, !noalias !666
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 24
  store i32 %i.tw, ptr %i.ty, align 8, !tbaa !253, !noalias !666
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 32
  store i64 0, ptr %i.tz, align 8, !tbaa !70, !noalias !666
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tv, i64 40
  store i32 0, ptr %i.ua, align 8, !tbaa !254, !noalias !666
  store ptr %i.tv, ptr %32, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.tt, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ub = load ptr, ptr %32, align 8, !tbaa !234  ; 3 uses
  %.not.i452 = icmp eq ptr %i.ub, null
  br i1 %.not.i452, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453: ; preds = %bb.cy
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !62
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8
  call void %i.ue(ptr noundef nonnull align 8 dereferenceable(24) %i.ub) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.uf, align 4, !tbaa !223
  br label %bb.fh

bb.cz:                                            ; preds = %bb.cx
  %i.ug = landingpad { ptr, i32 }
          cleanup
  %i.uh = load ptr, ptr %32, align 8, !tbaa !234  ; 3 uses
  %.not.i456 = icmp eq ptr %i.uh, null
  br i1 %.not.i456, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457: ; preds = %bb.cz
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !62
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8
  call void %i.uk(ptr noundef nonnull align 8 dereferenceable(24) %i.uh) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  br label %bb.fi

bb.da:                                            ; preds = %.loopexit
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #37
  %i.um = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !667 ; 4 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store i64 %2, ptr %i.un, align 8, !tbaa !70, !noalias !667
  %.sroa.2.0..sroa_idx.i.i.i465 = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i465, align 8, !noalias !667
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details13pid_formatterINS0_13scoped_padderEEE, i64 16), ptr %i.um, align 8, !tbaa !62, !noalias !667
  store ptr %i.um, ptr %33, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ul, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.uo = load ptr, ptr %33, align 8, !tbaa !234  ; 3 uses
  %.not.i466 = icmp eq ptr %i.uo, null
  br i1 %.not.i466, label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467: ; preds = %bb.db
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !62
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(24) %i.uo) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  br label %bb.fh

bb.dc:                                            ; preds = %bb.da
  %i.us = landingpad { ptr, i32 }
          cleanup
  %i.ut = load ptr, ptr %33, align 8, !tbaa !234  ; 3 uses
  %.not.i470 = icmp eq ptr %i.ut, null
  br i1 %.not.i470, label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i471

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i471: ; preds = %bb.dc
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !62
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8
  call void %i.uw(ptr noundef nonnull align 8 dereferenceable(24) %i.ut) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475

_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i471, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  br label %bb.fi

bb.dd:                                            ; preds = %.loopexit
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #37
  %i.uy = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !668 ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  store i64 %2, ptr %i.uz, align 8, !tbaa !70, !noalias !668
  %.sroa.2.0..sroa_idx.i.i.i479 = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i479, align 8, !noalias !668
end_hunk_3
begin_hunk_4_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details13scoped_padderEEEvcNS2_12padding_infoE:bb.a
  %.not.i658 = icmp eq ptr %i.ack, null
  br i1 %.not.i658, label %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i659

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i659: ; preds = %bb.fd
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !62
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %i.acn = load ptr, ptr %i.acm, align 8
  call void %i.acn(ptr noundef nonnull align 8 dereferenceable(24) %i.ack) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663

_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663: ; preds = %bb.fd, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i659, %bb.fc
  %.pn = phi { ptr, i32 } [ %i.aci, %bb.fc ], [ %i.acj, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i659 ], [ %i.acj, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #37
  br label %bb.fg

bb.fe:                                            ; preds = %bb.fa
  %i.aco = landingpad { ptr, i32 }
          cleanup
  %i.acp = load ptr, ptr %54, align 8, !tbaa !234 ; 3 uses
  %.not.i664 = icmp eq ptr %i.acp, null
  br i1 %.not.i664, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i665

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i665: ; preds = %bb.fe
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !62
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  %i.acs = load ptr, ptr %i.acr, align 8
  call void %i.acs(ptr noundef nonnull align 8 dereferenceable(24) %i.acp) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666: ; preds = %bb.fe, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i665
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #37
  br label %bb.fg

bb.ff:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit657, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit640
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37
  br label %bb.fh

bb.fg:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit643, %bb.ev
  %.pn6 = phi { ptr, i32 } [ %i.aco, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit666 ], [ %i.abn, %bb.ev ], [ %.pn, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit663 ], [ %i.abo, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit643 ]
  call void @_ZNSt10unique_ptrIN6spdlog7details19aggregate_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #37
  br label %bb.fi

bb.fh:                                            ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22, %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details15level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details21short_level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11I_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11M_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11S_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11e_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11f_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11F_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details20color_stop_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details25source_location_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details24short_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details25source_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details24source_linenum_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details12ch_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEESt14default_deleteIS9_EED2Ev.exit, %_ZNSt10unique_ptrIN6spdlog7details13mdc_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, %bb.ff, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit
  ret void

bb.fi:                                            ; preds = %bb.fg, %_ZNSt10unique_ptrIN6spdlog7details13mdc_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit637, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEESt14default_deleteIS9_EED2Ev.exit623, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEESt14default_deleteIS9_EED2Ev.exit613, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEESt14default_deleteIS9_EED2Ev.exit603, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEESt14default_deleteIS9_EED2Ev.exit593, %_ZNSt10unique_ptrIN6spdlog7details12ch_formatterESt14default_deleteIS2_EED2Ev.exit583, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit573, %_ZNSt10unique_ptrIN6spdlog7details24source_linenum_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit559, %_ZNSt10unique_ptrIN6spdlog7details25source_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit545, %_ZNSt10unique_ptrIN6spdlog7details24short_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit531, %_ZNSt10unique_ptrIN6spdlog7details25source_location_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit517, %_ZNSt10unique_ptrIN6spdlog7details20color_stop_formatterESt14default_deleteIS2_EED2Ev.exit503, %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit489, %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475, %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461, %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447, %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417, %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403, %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389, %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375, %_ZNSt10unique_ptrIN6spdlog7details11F_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit361, %_ZNSt10unique_ptrIN6spdlog7details11f_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit347, %_ZNSt10unique_ptrIN6spdlog7details11e_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit333, %_ZNSt10unique_ptrIN6spdlog7details11S_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit319, %_ZNSt10unique_ptrIN6spdlog7details11M_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit305, %_ZNSt10unique_ptrIN6spdlog7details11I_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit291, %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit277, %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263, %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249, %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235, %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205, %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191, %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177, %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163, %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149, %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119, %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105, %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91, %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77, %_ZNSt10unique_ptrIN6spdlog7details21short_level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit63, %_ZNSt10unique_ptrIN6spdlog7details15level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit49, %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit35, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19
  %.pn8 = phi { ptr, i32 } [ %i.bx, %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19 ], [ %.pn6, %bb.fg ], [ %i.cm, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25 ], [ %i.cy, %_ZNSt10unique_ptrIN6spdlog7details14name_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit35 ], [ %i.dk, %_ZNSt10unique_ptrIN6spdlog7details15level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit49 ], [ %i.dw, %_ZNSt10unique_ptrIN6spdlog7details21short_level_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit63 ], [ %i.ei, %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77 ], [ %i.eu, %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91 ], [ %i.fh, %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105 ], [ %i.fu, %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119 ], [ %i.hq, %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149 ], [ %i.ic, %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163 ], [ %i.ip, %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177 ], [ %i.jc, %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191 ], [ %i.jp, %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205 ], [ %i.ll, %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235 ], [ %i.lx, %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249 ], [ %i.mk, %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263 ], [ %i.mx, %_ZNSt10unique_ptrIN6spdlog7details11H_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit277 ], [ %i.nk, %_ZNSt10unique_ptrIN6spdlog7details11I_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit291 ], [ %i.nx, %_ZNSt10unique_ptrIN6spdlog7details11M_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit305 ], [ %i.ok, %_ZNSt10unique_ptrIN6spdlog7details11S_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit319 ], [ %i.ow, %_ZNSt10unique_ptrIN6spdlog7details11e_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit333 ], [ %i.pi, %_ZNSt10unique_ptrIN6spdlog7details11f_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit347 ], [ %i.pu, %_ZNSt10unique_ptrIN6spdlog7details11F_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit361 ], [ %i.qg, %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375 ], [ %i.qt, %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389 ], [ %i.rg, %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403 ], [ %i.rt, %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417 ], [ %i.tp, %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447 ], [ %i.ug, %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461 ], [ %i.us, %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475 ], [ %i.ve, %_ZNSt10unique_ptrIN6spdlog7details21color_start_formatterESt14default_deleteIS2_EED2Ev.exit489 ], [ %i.vq, %_ZNSt10unique_ptrIN6spdlog7details20color_stop_formatterESt14default_deleteIS2_EED2Ev.exit503 ], [ %i.wc, %_ZNSt10unique_ptrIN6spdlog7details25source_location_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit517 ], [ %i.wo, %_ZNSt10unique_ptrIN6spdlog7details24short_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit531 ], [ %i.xa, %_ZNSt10unique_ptrIN6spdlog7details25source_filename_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit545 ], [ %i.xm, %_ZNSt10unique_ptrIN6spdlog7details24source_linenum_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit559 ], [ %i.xy, %_ZNSt10unique_ptrIN6spdlog7details25source_funcname_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit573 ], [ %i.yl, %_ZNSt10unique_ptrIN6spdlog7details12ch_formatterESt14default_deleteIS2_EED2Ev.exit583 ], [ %i.yx, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEESt14default_deleteIS9_EED2Ev.exit593 ], [ %i.zk, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEESt14default_deleteIS9_EED2Ev.exit603 ], [ %i.zx, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEESt14default_deleteIS9_EED2Ev.exit613 ], [ %i.aak, %_ZNSt10unique_ptrIN6spdlog7details17elapsed_formatterINS1_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEESt14default_deleteIS9_EED2Ev.exit623 ], [ %i.aax, %_ZNSt10unique_ptrIN6spdlog7details13mdc_formatterINS1_13scoped_padderEEESt14default_deleteIS4_EED2Ev.exit637 ]
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 noundef signext %1, i64 %2, i64 %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::details::padding_info", align 16 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.116", align 8 ; 8 uses
  %6 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %7 = alloca %"class.std::unique_ptr.105", align 8 ; 8 uses
  %8 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %9 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %10 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %11 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %12 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %13 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %14 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %15 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %16 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %17 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %18 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %19 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %20 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %21 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %22 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %23 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %24 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %25 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %26 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %27 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %28 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %29 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %30 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %31 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %32 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %33 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %34 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %35 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %36 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %37 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %38 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %39 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %40 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %41 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %42 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %43 = alloca %"class.std::unique_ptr.920", align 8 ; 8 uses
  %44 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %45 = alloca %"class.std::unique_ptr.928", align 8 ; 8 uses
  %46 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %47 = alloca %"class.std::unique_ptr.936", align 8 ; 8 uses
  %48 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %49 = alloca %"class.std::unique_ptr.944", align 8 ; 8 uses
  %50 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %51 = alloca %"class.std::unique_ptr.126", align 8 ; 12 uses
  %52 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %53 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  %54 = alloca %"class.std::unique_ptr.97", align 8 ; 7 uses
  store i64 %2, ptr %4, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load i64, ptr %i.b, align 8, !tbaa !224
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !176 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.f = load i8, ptr %i.e, align 1, !tbaa !64
  %i.g = icmp eq i8 %1, %i.f
  br i1 %i.g, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %bb.c, !llvm.loop !24

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = sext i8 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load i64, ptr %i.j, align 8, !tbaa !198  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !228  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !176  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 1, !tbaa !64
  %i.s = icmp eq i8 %1, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.t = icmp eq i8 %1, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !21

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !176 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 1, !tbaa !64    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = urem i64 %i.x, %i.k
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !21

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !21

_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !201 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.116") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  %i.ae = load ptr, ptr %5, align 8, !tbaa !201   ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.af, ptr noundef nonnull align 16 dereferenceable(14) %4, i64 14, i1 false), !tbaa.struct !247
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !201
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !232 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !236
  %.not.i.i10 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i10, label %bb.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit
  %i.al = ptrtoint ptr %i.ae to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !234
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt13unordered_mapIcSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS2_EESt4hashIcESt8equal_toIcESaISt4pairIKcS5_EEE4findERSB_.exit
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !231 ; 10 uses
  %i.ao = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #45
          to label %.noexc12 unwind label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16 ; 10 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.ba = ptrtoint ptr %i.ae to i64
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc12
  %i.bb = add i64 %i.ao, -8
  %i.bc = sub i64 %i.bb, %i.ap                    ; 3 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1029, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bf = and i64 %i.bc, -8
  %i.bg = add i64 %i.bf, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bg
  %scevgep957 = getelementptr i8, ptr %i.an, i64 %i.bg
  %bound0 = icmp ult ptr %i.ay, %scevgep957
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1029, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ay, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.an, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bk ; 2 uses
  %next.gep958 = getelementptr i8, ptr %i.an, i64 %i.bk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.bl = getelementptr i8, ptr %next.gep958, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep958, align 8, !tbaa !234, !alias.scope !793, !noalias !791
  %wide.load959 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !234, !alias.scope !793, !noalias !791
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !234, !alias.scope !794, !noalias !793
  store <2 x i64> %wide.load959, ptr %i.bm, align 8, !tbaa !234, !alias.scope !794, !noalias !793
  %i.bn = getelementptr i8, ptr %next.gep958, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep958, align 8, !tbaa !234, !alias.scope !793, !noalias !791
  store <2 x ptr> splat (ptr null), ptr %i.bn, align 8, !tbaa !234, !alias.scope !793, !noalias !791
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !685

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1029

.lr.ph.i.i.i.i.i.i.i.preheader1029:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1029, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1029 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1029 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.bp = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !792, !noalias !791
  store i64 %i.bp, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !791, !noalias !792
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !234, !alias.scope !792, !noalias !791
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.ai
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !686

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc12
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc12 ], [ %i.bi, %middle.block ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #44
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.k
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !231
  store ptr %i.bs, ptr %i.ah, align 8, !tbaa !232
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bt, ptr %i.aj, align 8, !tbaa !236
  %.pre = load ptr, ptr %5, align 8, !tbaa !201   ; 3 uses
  %.not.i13 = icmp eq ptr %.pre, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit
  %i.bu = load ptr, ptr %.pre, align 8, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #37, !inline_history !22
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16: ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #37, !inline_history !19
  %i.cb = load ptr, ptr %5, align 8, !tbaa !201   ; 3 uses
  %.not.i17 = icmp eq ptr %i.cb, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19, label %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(24) %i.cb) #37, !inline_history !22
  br label %_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN6spdlog21custom_flag_formatterESt14default_deleteIS1_EED2Ev.exit19: ; preds = %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit16, %_ZNKSt14default_deleteIN6spdlog21custom_flag_formatterEEclEPS1_.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.fi

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  switch i8 %1, label %bb.eq [
    i8 43, label %bb.l
    i8 110, label %bb.o
    i8 108, label %bb.r
    i8 76, label %bb.u
    i8 116, label %bb.x
    i8 118, label %bb.aa
    i8 97, label %bb.ad
    i8 65, label %bb.ag
    i8 98, label %bb.aj
    i8 104, label %bb.aj
    i8 66, label %bb.ao
    i8 99, label %bb.ar
    i8 67, label %bb.au
    i8 89, label %bb.ax
    i8 68, label %bb.ba
    i8 120, label %bb.ba
    i8 109, label %bb.bf
    i8 100, label %bb.bi
    i8 72, label %bb.bl
    i8 73, label %bb.bo
    i8 77, label %bb.br
    i8 83, label %bb.bu
    i8 101, label %bb.bx
    i8 102, label %bb.ca
    i8 70, label %bb.cd
    i8 69, label %bb.cg
    i8 112, label %bb.cj
    i8 114, label %bb.cm
    i8 82, label %bb.cp
    i8 84, label %bb.cs
    i8 88, label %bb.cs
    i8 122, label %bb.cx
    i8 80, label %bb.da
    i8 94, label %bb.dd
    i8 36, label %bb.dg
    i8 64, label %bb.dj
    i8 115, label %bb.dm
    i8 103, label %bb.dp
    i8 35, label %bb.ds
    i8 33, label %bb.dv
    i8 37, label %bb.dy
    i8 117, label %bb.eb
    i8 105, label %bb.ee
    i8 111, label %bb.eh
    i8 79, label %bb.ek
    i8 38, label %bb.en
  ]

bb.l:                                             ; preds = %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @_ZN6spdlog7details11make_uniqueINS0_14full_formatterEJRNS0_12padding_infoEEEESt10unique_ptrIT_St14default_deleteIS6_EEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.105") align 8 %7, ptr noundef nonnull align 8 dereferenceable(14) %4)
  %i.cg = load ptr, ptr %7, align 8, !tbaa !239
  store ptr null, ptr %7, align 8, !tbaa !239
  store ptr %i.cg, ptr %6, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %6, align 8, !tbaa !234   ; 3 uses
  %.not.i20 = icmp eq ptr %i.ch, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21: ; preds = %bb.m
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(24) %i.ch) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22

_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit22: ; preds = %bb.m, %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i21
  call void @_ZNSt10unique_ptrIN6spdlog7details14full_formatterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.cl, align 4, !tbaa !223
  br label %bb.fh

bb.n:                                             ; preds = %bb.l
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %6, align 8, !tbaa !234   ; 3 uses
  %.not.i23 = icmp eq ptr %i.cn, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS2_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i24

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i24: ; preds = %bb.n
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
end_hunk_4
begin_hunk_5_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE:bb.a
  br i1 %.not.i68, label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i69

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i69: ; preds = %bb.y
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !62
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(24) %i.ee) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i69, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.fh

bb.z:                                             ; preds = %bb.x
  %i.ei = landingpad { ptr, i32 }
          cleanup
  %i.ej = load ptr, ptr %11, align 8, !tbaa !234  ; 3 uses
  %.not.i72 = icmp eq ptr %i.ej, null
  br i1 %.not.i72, label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73: ; preds = %bb.z
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !62
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(24) %i.ej) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77

_ZNSt10unique_ptrIN6spdlog7details11t_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit77: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i73, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.fi

bb.aa:                                            ; preds = %.loopexit
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.eo = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !799 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %2, ptr %i.ep, align 8, !tbaa !70, !noalias !799
  %.sroa.2.0..sroa_idx.i.i.i81 = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i81, align 8, !noalias !799
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11v_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.eo, align 8, !tbaa !62, !noalias !799
  store ptr %i.eo, ptr %12, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.en, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = load ptr, ptr %12, align 8, !tbaa !234  ; 3 uses
  %.not.i82 = icmp eq ptr %i.eq, null
  br i1 %.not.i82, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83: ; preds = %bb.ab
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !62
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(24) %i.eq) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i83, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.fh

bb.ac:                                            ; preds = %bb.aa
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = load ptr, ptr %12, align 8, !tbaa !234  ; 3 uses
  %.not.i86 = icmp eq ptr %i.ev, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87: ; preds = %bb.ac
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !62
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(24) %i.ev) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91

_ZNSt10unique_ptrIN6spdlog7details11v_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit91: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i87, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.fi

bb.ad:                                            ; preds = %.loopexit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.fa = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !800 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %2, ptr %i.fb, align 8, !tbaa !70, !noalias !800
  %.sroa.2.0..sroa_idx.i.i.i95 = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i95, align 8, !noalias !800
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11a_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.fa, align 8, !tbaa !62, !noalias !800
  store ptr %i.fa, ptr %13, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fc = load ptr, ptr %13, align 8, !tbaa !234  ; 3 uses
  %.not.i96 = icmp eq ptr %i.fc, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97: ; preds = %bb.ae
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !62
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(24) %i.fc) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i97, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.fg, align 4, !tbaa !223
  br label %bb.fh

bb.af:                                            ; preds = %bb.ad
  %i.fh = landingpad { ptr, i32 }
          cleanup
  %i.fi = load ptr, ptr %13, align 8, !tbaa !234  ; 3 uses
  %.not.i100 = icmp eq ptr %i.fi, null
  br i1 %.not.i100, label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101: ; preds = %bb.af
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !62
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(24) %i.fi) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105

_ZNSt10unique_ptrIN6spdlog7details11a_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit105: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i101, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.fi

bb.ag:                                            ; preds = %.loopexit
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  %i.fn = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !801 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 %2, ptr %i.fo, align 8, !tbaa !70, !noalias !801
  %.sroa.2.0..sroa_idx.i.i.i109 = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i109, align 8, !noalias !801
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11A_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.fn, align 8, !tbaa !62, !noalias !801
  store ptr %i.fn, ptr %14, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fp = load ptr, ptr %14, align 8, !tbaa !234  ; 3 uses
  %.not.i110 = icmp eq ptr %i.fp, null
  br i1 %.not.i110, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111: ; preds = %bb.ah
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !62
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(24) %i.fp) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i111, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ft, align 4, !tbaa !223
  br label %bb.fh

bb.ai:                                            ; preds = %bb.ag
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %14, align 8, !tbaa !234  ; 3 uses
  %.not.i114 = icmp eq ptr %i.fv, null
  br i1 %.not.i114, label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115: ; preds = %bb.ai
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !62
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(24) %i.fv) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119

_ZNSt10unique_ptrIN6spdlog7details11A_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit119: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i115, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.fi

bb.aj:                                            ; preds = %.loopexit, %.loopexit
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ga = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !802 ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i64 %2, ptr %i.gb, align 8, !tbaa !70, !noalias !802
  %.sroa.2.0..sroa_idx.i.i.i123 = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i123, align 8, !noalias !802
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11b_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ga, align 8, !tbaa !62, !noalias !802
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !232 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !236
  %.not.i.i124 = icmp eq ptr %i.gd, %i.gf
  br i1 %.not.i.i124, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gg = ptrtoint ptr %i.ga to i64
  store i64 %i.gg, ptr %i.gd, align 8, !tbaa !234
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gh, ptr %i.gc, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !231 ; 10 uses
  %i.gj = ptrtoint ptr %i.gd to i64               ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gl = sub i64 %i.gj, %i.gk                    ; 3 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775800
  br i1 %i.gm, label %bb.am, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc137 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149

.noexc137:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125: ; preds = %bb.al
  %i.gn = ashr exact i64 %i.gl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i126 = tail call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i.i126, %i.gn ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.gn
  %i.gq = tail call i64 @llvm.umin.i64(i64 %i.go, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 3 uses
  %.not.i.i.i.i127 = icmp ne i64 %i.gr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i127)
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #45
          to label %.noexc138 unwind label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149 ; 10 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gl
  %i.gv = ptrtoint ptr %i.ga to i64
  store i64 %i.gv, ptr %i.gu, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i128 = icmp eq ptr %i.gi, %i.gd
  br i1 %.not10.i.i.i.i.i.i.i128, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader

.lr.ph.i.i.i.i.i.i.i129.preheader:                ; preds = %.noexc138
  %i.gw = add i64 %i.gj, -8
  %i.gx = sub i64 %i.gw, %i.gk                    ; 3 uses
  %i.gy = lshr i64 %i.gx, 3
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check1010 = icmp ult i64 %i.gx, 136
  br i1 %min.iters.check1010, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024, label %vector.memcheck1003

vector.memcheck1003:                              ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader
  %i.ha = and i64 %i.gx, -8
  %i.hb = add i64 %i.ha, 8                        ; 2 uses
  %scevgep1004 = getelementptr i8, ptr %i.gt, i64 %i.hb
  %scevgep1005 = getelementptr i8, ptr %i.gi, i64 %i.hb
  %bound01006 = icmp ult ptr %i.gt, %scevgep1005
  %bound11007 = icmp ult ptr %i.gi, %scevgep1004
  %found.conflict1008 = and i1 %bound01006, %bound11007
  br i1 %found.conflict1008, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024, label %vector.ph1011

vector.ph1011:                                    ; preds = %vector.memcheck1003
  %n.vec1012 = and i64 %i.gz, 4611686018427387900 ; 3 uses
  %i.hc = shl i64 %n.vec1012, 3                   ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gt, i64 %i.hc  ; 2 uses
  %i.he = getelementptr i8, ptr %i.gi, i64 %i.hc
  br label %vector.body1013

vector.body1013:                                  ; preds = %vector.body1013, %vector.ph1011
  %index1014 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1019, %vector.body1013 ] ; 2 uses
  %i.hf = shl i64 %index1014, 3                   ; 2 uses
  %next.gep1015 = getelementptr i8, ptr %i.gt, i64 %i.hf ; 2 uses
  %next.gep1016 = getelementptr i8, ptr %i.gi, i64 %i.hf ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.hg = getelementptr i8, ptr %next.gep1016, i64 16
  %wide.load1017 = load <2 x i64>, ptr %next.gep1016, align 8, !tbaa !234, !alias.scope !805, !noalias !803
  %wide.load1018 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !234, !alias.scope !805, !noalias !803
  %i.hh = getelementptr i8, ptr %next.gep1015, i64 16
  store <2 x i64> %wide.load1017, ptr %next.gep1015, align 8, !tbaa !234, !alias.scope !806, !noalias !805
  store <2 x i64> %wide.load1018, ptr %i.hh, align 8, !tbaa !234, !alias.scope !806, !noalias !805
  %i.hi = getelementptr i8, ptr %next.gep1016, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1016, align 8, !tbaa !234, !alias.scope !805, !noalias !803
  store <2 x ptr> splat (ptr null), ptr %i.hi, align 8, !tbaa !234, !alias.scope !805, !noalias !803
  %index.next1019 = add nuw i64 %index1014, 4     ; 2 uses
  %i.hj = icmp eq i64 %index.next1019, %n.vec1012
  br i1 %i.hj, label %middle.block1020, label %vector.body1013, !llvm.loop !709

middle.block1020:                                 ; preds = %vector.body1013
  %cmp.n1021 = icmp eq i64 %i.gz, %n.vec1012
  br i1 %cmp.n1021, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129.preheader1024

.lr.ph.i.i.i.i.i.i.i129.preheader1024:            ; preds = %vector.memcheck1003, %.lr.ph.i.i.i.i.i.i.i129.preheader, %middle.block1020
  %.012.i.i.i.i.i.i.i130.ph = phi ptr [ %i.gt, %vector.memcheck1003 ], [ %i.gt, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.hd, %middle.block1020 ]
  %.0911.i.i.i.i.i.i.i131.ph = phi ptr [ %i.gi, %vector.memcheck1003 ], [ %i.gi, %.lr.ph.i.i.i.i.i.i.i129.preheader ], [ %i.he, %middle.block1020 ]
  br label %.lr.ph.i.i.i.i.i.i.i129

.lr.ph.i.i.i.i.i.i.i129:                          ; preds = %.lr.ph.i.i.i.i.i.i.i129.preheader1024, %.lr.ph.i.i.i.i.i.i.i129
  %.012.i.i.i.i.i.i.i130 = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.012.i.i.i.i.i.i.i130.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1024 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i131 = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i.i129 ], [ %.0911.i.i.i.i.i.i.i131.ph, %.lr.ph.i.i.i.i.i.i.i129.preheader1024 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.hk = load i64, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !234, !alias.scope !804, !noalias !803
  store i64 %i.hk, ptr %.012.i.i.i.i.i.i.i130, align 8, !tbaa !234, !alias.scope !803, !noalias !804
  store ptr null, ptr %.0911.i.i.i.i.i.i.i131, align 8, !tbaa !234, !alias.scope !804, !noalias !803
  %i.hl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i131, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i130, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %i.hl, %i.gd
  br i1 %.not.i.i.i.i.i.i.i132, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133, label %.lr.ph.i.i.i.i.i.i.i129, !llvm.loop !710

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133: ; preds = %.lr.ph.i.i.i.i.i.i.i129, %middle.block1020, %.noexc138
  %.0.lcssa.i.i.i.i.i.i.i134 = phi ptr [ %i.gt, %.noexc138 ], [ %i.hd, %middle.block1020 ], [ %i.hm, %.lr.ph.i.i.i.i.i.i.i129 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i134, i64 8
  %.not.i23.i.i.i135 = icmp eq ptr %i.gi, null
  br i1 %.not.i23.i.i.i135, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  tail call void @_ZdlPv(ptr noundef nonnull %i.gi) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136: ; preds = %bb.an, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i133
  store ptr %i.gt, ptr %i.fz, align 8, !tbaa !231
  store ptr %i.hn, ptr %i.gc, align 8, !tbaa !232
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  store ptr %i.ho, ptr %i.ge, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i136, %bb.ak
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.hp, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11b_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit149: ; preds = %bb.am, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i125
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %i.hr = load ptr, ptr %i.ga, align 8, !tbaa !62
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  tail call void %i.ht(ptr noundef nonnull align 8 dereferenceable(24) %i.ga) #37, !inline_history !19
  br label %bb.fi

bb.ao:                                            ; preds = %.loopexit
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.hv = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !807 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 %2, ptr %i.hw, align 8, !tbaa !70, !noalias !807
  %.sroa.2.0..sroa_idx.i.i.i153 = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i153, align 8, !noalias !807
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11B_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.hv, align 8, !tbaa !62, !noalias !807
  store ptr %i.hv, ptr %15, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hx = load ptr, ptr %15, align 8, !tbaa !234  ; 3 uses
  %.not.i154 = icmp eq ptr %i.hx, null
  br i1 %.not.i154, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155: ; preds = %bb.ap
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !62
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(24) %i.hx) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i155, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ib, align 4, !tbaa !223
  br label %bb.fh

bb.aq:                                            ; preds = %bb.ao
  %i.ic = landingpad { ptr, i32 }
          cleanup
  %i.id = load ptr, ptr %15, align 8, !tbaa !234  ; 3 uses
  %.not.i158 = icmp eq ptr %i.id, null
  br i1 %.not.i158, label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159: ; preds = %bb.aq
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !62
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(24) %i.id) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163

_ZNSt10unique_ptrIN6spdlog7details11B_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit163: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i159, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.fi

bb.ar:                                            ; preds = %.loopexit
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.ii = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !808 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i64 %2, ptr %i.ij, align 8, !tbaa !70, !noalias !808
  %.sroa.2.0..sroa_idx.i.i.i167 = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i167, align 8, !noalias !808
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11c_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ii, align 8, !tbaa !62, !noalias !808
  store ptr %i.ii, ptr %16, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ih, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ik = load ptr, ptr %16, align 8, !tbaa !234  ; 3 uses
  %.not.i168 = icmp eq ptr %i.ik, null
  br i1 %.not.i168, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169: ; preds = %bb.as
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !62
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(24) %i.ik) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i169, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.io, align 4, !tbaa !223
  br label %bb.fh

bb.at:                                            ; preds = %bb.ar
  %i.ip = landingpad { ptr, i32 }
          cleanup
  %i.iq = load ptr, ptr %16, align 8, !tbaa !234  ; 3 uses
  %.not.i172 = icmp eq ptr %i.iq, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173: ; preds = %bb.at
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !62
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(24) %i.iq) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177

_ZNSt10unique_ptrIN6spdlog7details11c_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit177: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i173, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.fi

bb.au:                                            ; preds = %.loopexit
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.iv = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !809 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store i64 %2, ptr %i.iw, align 8, !tbaa !70, !noalias !809
  %.sroa.2.0..sroa_idx.i.i.i181 = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i181, align 8, !noalias !809
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11C_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.iv, align 8, !tbaa !62, !noalias !809
  store ptr %i.iv, ptr %17, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ix = load ptr, ptr %17, align 8, !tbaa !234  ; 3 uses
  %.not.i182 = icmp eq ptr %i.ix, null
  br i1 %.not.i182, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183: ; preds = %bb.av
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !62
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(24) %i.ix) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i183, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.jb, align 4, !tbaa !223
  br label %bb.fh

bb.aw:                                            ; preds = %bb.au
  %i.jc = landingpad { ptr, i32 }
          cleanup
  %i.jd = load ptr, ptr %17, align 8, !tbaa !234  ; 3 uses
  %.not.i186 = icmp eq ptr %i.jd, null
  br i1 %.not.i186, label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187: ; preds = %bb.aw
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !62
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(24) %i.jd) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191

_ZNSt10unique_ptrIN6spdlog7details11C_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit191: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i187, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %bb.fi

bb.ax:                                            ; preds = %.loopexit
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.ji = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !810 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store i64 %2, ptr %i.jj, align 8, !tbaa !70, !noalias !810
  %.sroa.2.0..sroa_idx.i.i.i195 = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i195, align 8, !noalias !810
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11Y_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.ji, align 8, !tbaa !62, !noalias !810
  store ptr %i.ji, ptr %18, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jk = load ptr, ptr %18, align 8, !tbaa !234  ; 3 uses
  %.not.i196 = icmp eq ptr %i.jk, null
  br i1 %.not.i196, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197: ; preds = %bb.ay
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !62
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(24) %i.jk) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i197, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.jo, align 4, !tbaa !223
  br label %bb.fh

bb.az:                                            ; preds = %bb.ax
  %i.jp = landingpad { ptr, i32 }
          cleanup
  %i.jq = load ptr, ptr %18, align 8, !tbaa !234  ; 3 uses
  %.not.i200 = icmp eq ptr %i.jq, null
  br i1 %.not.i200, label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201: ; preds = %bb.az
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !62
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(24) %i.jq) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205

_ZNSt10unique_ptrIN6spdlog7details11Y_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit205: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i201, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #37
  br label %bb.fi

bb.ba:                                            ; preds = %.loopexit, %.loopexit
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.jv = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !811 ; 7 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i64 %2, ptr %i.jw, align 8, !tbaa !70, !noalias !811
  %.sroa.2.0..sroa_idx.i.i.i209 = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i209, align 8, !noalias !811
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11D_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.jv, align 8, !tbaa !62, !noalias !811
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !232 ; 6 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !236
  %.not.i.i210 = icmp eq ptr %i.jy, %i.ka
  br i1 %.not.i.i210, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kb = ptrtoint ptr %i.jv to i64
  store i64 %i.kb, ptr %i.jy, align 8, !tbaa !234
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store ptr %i.kc, ptr %i.jx, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.bc:                                            ; preds = %bb.ba
  %i.kd = load ptr, ptr %i.ju, align 8, !tbaa !231 ; 10 uses
  %i.ke = ptrtoint ptr %i.jy to i64               ; 2 uses
  %i.kf = ptrtoint ptr %i.kd to i64               ; 2 uses
  %i.kg = sub i64 %i.ke, %i.kf                    ; 3 uses
  %i.kh = icmp eq i64 %i.kg, 9223372036854775800
  br i1 %i.kh, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc223 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235

.noexc223:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211: ; preds = %bb.bc
  %i.ki = ashr exact i64 %i.kg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i212 = tail call i64 @llvm.umax.i64(i64 %i.ki, i64 1)
  %i.kj = add nsw i64 %.sroa.speculated.i.i.i.i212, %i.ki ; 2 uses
  %i.kk = icmp ult i64 %i.kj, %i.ki
  %i.kl = tail call i64 @llvm.umin.i64(i64 %i.kj, i64 1152921504606846975)
  %i.km = select i1 %i.kk, i64 1152921504606846975, i64 %i.kl ; 3 uses
  %.not.i.i.i.i213 = icmp ne i64 %i.km, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i213)
  %i.kn = shl nuw nsw i64 %i.km, 3
  %i.ko = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kn) #45
          to label %.noexc224 unwind label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235 ; 10 uses

.noexc224:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kg
  %i.kq = ptrtoint ptr %i.jv to i64
  store i64 %i.kq, ptr %i.kp, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i214 = icmp eq ptr %i.kd, %i.jy
  br i1 %.not10.i.i.i.i.i.i.i214, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader

.lr.ph.i.i.i.i.i.i.i215.preheader:                ; preds = %.noexc224
  %i.kr = add i64 %i.ke, -8
  %i.ks = sub i64 %i.kr, %i.kf                    ; 3 uses
  %i.kt = lshr i64 %i.ks, 3
  %i.ku = add nuw nsw i64 %i.kt, 1                ; 2 uses
  %min.iters.check989 = icmp ult i64 %i.ks, 136
  br i1 %min.iters.check989, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025, label %vector.memcheck982

vector.memcheck982:                               ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader
  %i.kv = and i64 %i.ks, -8
  %i.kw = add i64 %i.kv, 8                        ; 2 uses
  %scevgep983 = getelementptr i8, ptr %i.ko, i64 %i.kw
  %scevgep984 = getelementptr i8, ptr %i.kd, i64 %i.kw
  %bound0985 = icmp ult ptr %i.ko, %scevgep984
  %bound1986 = icmp ult ptr %i.kd, %scevgep983
  %found.conflict987 = and i1 %bound0985, %bound1986
  br i1 %found.conflict987, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025, label %vector.ph990

vector.ph990:                                     ; preds = %vector.memcheck982
  %n.vec991 = and i64 %i.ku, 4611686018427387900  ; 3 uses
  %i.kx = shl i64 %n.vec991, 3                    ; 2 uses
  %i.ky = getelementptr i8, ptr %i.ko, i64 %i.kx  ; 2 uses
  %i.kz = getelementptr i8, ptr %i.kd, i64 %i.kx
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph990
  %index993 = phi i64 [ 0, %vector.ph990 ], [ %index.next998, %vector.body992 ] ; 2 uses
  %i.la = shl i64 %index993, 3                    ; 2 uses
  %next.gep994 = getelementptr i8, ptr %i.ko, i64 %i.la ; 2 uses
  %next.gep995 = getelementptr i8, ptr %i.kd, i64 %i.la ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.lb = getelementptr i8, ptr %next.gep995, i64 16
  %wide.load996 = load <2 x i64>, ptr %next.gep995, align 8, !tbaa !234, !alias.scope !814, !noalias !812
  %wide.load997 = load <2 x i64>, ptr %i.lb, align 8, !tbaa !234, !alias.scope !814, !noalias !812
  %i.lc = getelementptr i8, ptr %next.gep994, i64 16
  store <2 x i64> %wide.load996, ptr %next.gep994, align 8, !tbaa !234, !alias.scope !815, !noalias !814
  store <2 x i64> %wide.load997, ptr %i.lc, align 8, !tbaa !234, !alias.scope !815, !noalias !814
  %i.ld = getelementptr i8, ptr %next.gep995, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep995, align 8, !tbaa !234, !alias.scope !814, !noalias !812
  store <2 x ptr> splat (ptr null), ptr %i.ld, align 8, !tbaa !234, !alias.scope !814, !noalias !812
  %index.next998 = add nuw i64 %index993, 4       ; 2 uses
  %i.le = icmp eq i64 %index.next998, %n.vec991
  br i1 %i.le, label %middle.block999, label %vector.body992, !llvm.loop !727

middle.block999:                                  ; preds = %vector.body992
  %cmp.n1000 = icmp eq i64 %i.ku, %n.vec991
  br i1 %cmp.n1000, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215.preheader1025

.lr.ph.i.i.i.i.i.i.i215.preheader1025:            ; preds = %vector.memcheck982, %.lr.ph.i.i.i.i.i.i.i215.preheader, %middle.block999
  %.012.i.i.i.i.i.i.i216.ph = phi ptr [ %i.ko, %vector.memcheck982 ], [ %i.ko, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.ky, %middle.block999 ]
  %.0911.i.i.i.i.i.i.i217.ph = phi ptr [ %i.kd, %vector.memcheck982 ], [ %i.kd, %.lr.ph.i.i.i.i.i.i.i215.preheader ], [ %i.kz, %middle.block999 ]
  br label %.lr.ph.i.i.i.i.i.i.i215

.lr.ph.i.i.i.i.i.i.i215:                          ; preds = %.lr.ph.i.i.i.i.i.i.i215.preheader1025, %.lr.ph.i.i.i.i.i.i.i215
  %.012.i.i.i.i.i.i.i216 = phi ptr [ %i.lh, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.012.i.i.i.i.i.i.i216.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1025 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i217 = phi ptr [ %i.lg, %.lr.ph.i.i.i.i.i.i.i215 ], [ %.0911.i.i.i.i.i.i.i217.ph, %.lr.ph.i.i.i.i.i.i.i215.preheader1025 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.lf = load i64, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !234, !alias.scope !813, !noalias !812
  store i64 %i.lf, ptr %.012.i.i.i.i.i.i.i216, align 8, !tbaa !234, !alias.scope !812, !noalias !813
  store ptr null, ptr %.0911.i.i.i.i.i.i.i217, align 8, !tbaa !234, !alias.scope !813, !noalias !812
  %i.lg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i217, i64 8 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i216, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i218 = icmp eq ptr %i.lg, %i.jy
  br i1 %.not.i.i.i.i.i.i.i218, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219, label %.lr.ph.i.i.i.i.i.i.i215, !llvm.loop !728

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219: ; preds = %.lr.ph.i.i.i.i.i.i.i215, %middle.block999, %.noexc224
  %.0.lcssa.i.i.i.i.i.i.i220 = phi ptr [ %i.ko, %.noexc224 ], [ %i.ky, %middle.block999 ], [ %i.lh, %.lr.ph.i.i.i.i.i.i.i215 ]
  %i.li = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i220, i64 8
  %.not.i23.i.i.i221 = icmp eq ptr %i.kd, null
  br i1 %.not.i23.i.i.i221, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  tail call void @_ZdlPv(ptr noundef nonnull %i.kd) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222: ; preds = %bb.be, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i219
  store ptr %i.ko, ptr %i.ju, align 8, !tbaa !231
  store ptr %i.li, ptr %i.jx, align 8, !tbaa !232
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.km
  store ptr %i.lj, ptr %i.jz, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i222, %bb.bb
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.lk, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11D_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit235: ; preds = %bb.bd, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i211
  %i.ll = landingpad { ptr, i32 }
          cleanup
  %i.lm = load ptr, ptr %i.jv, align 8, !tbaa !62
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8
  tail call void %i.lo(ptr noundef nonnull align 8 dereferenceable(24) %i.jv) #37, !inline_history !19
  br label %bb.fi

bb.bf:                                            ; preds = %.loopexit
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  %i.lq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !816 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store i64 %2, ptr %i.lr, align 8, !tbaa !70, !noalias !816
  %.sroa.2.0..sroa_idx.i.i.i239 = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i239, align 8, !noalias !816
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11m_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.lq, align 8, !tbaa !62, !noalias !816
  store ptr %i.lq, ptr %19, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.lp, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ls = load ptr, ptr %19, align 8, !tbaa !234  ; 3 uses
  %.not.i240 = icmp eq ptr %i.ls, null
  br i1 %.not.i240, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241: ; preds = %bb.bg
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !62
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(24) %i.ls) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i241, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.lw, align 4, !tbaa !223
  br label %bb.fh

bb.bh:                                            ; preds = %bb.bf
  %i.lx = landingpad { ptr, i32 }
          cleanup
  %i.ly = load ptr, ptr %19, align 8, !tbaa !234  ; 3 uses
  %.not.i244 = icmp eq ptr %i.ly, null
  br i1 %.not.i244, label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245: ; preds = %bb.bh
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !62
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(24) %i.ly) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249

_ZNSt10unique_ptrIN6spdlog7details11m_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit249: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i245, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br label %bb.fi

bb.bi:                                            ; preds = %.loopexit
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #37
  %i.md = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !817 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i64 %2, ptr %i.me, align 8, !tbaa !70, !noalias !817
  %.sroa.2.0..sroa_idx.i.i.i253 = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i253, align 8, !noalias !817
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11d_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.md, align 8, !tbaa !62, !noalias !817
  store ptr %i.md, ptr %20, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.mc, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mf = load ptr, ptr %20, align 8, !tbaa !234  ; 3 uses
  %.not.i254 = icmp eq ptr %i.mf, null
  br i1 %.not.i254, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255: ; preds = %bb.bj
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !62
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(24) %i.mf) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i255, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.mj, align 4, !tbaa !223
  br label %bb.fh

bb.bk:                                            ; preds = %bb.bi
  %i.mk = landingpad { ptr, i32 }
          cleanup
  %i.ml = load ptr, ptr %20, align 8, !tbaa !234  ; 3 uses
  %.not.i258 = icmp eq ptr %i.ml, null
  br i1 %.not.i258, label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259: ; preds = %bb.bk
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !62
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(24) %i.ml) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263

_ZNSt10unique_ptrIN6spdlog7details11d_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit263: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i259, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  br label %bb.fi

bb.bl:                                            ; preds = %.loopexit
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #37
  %i.mq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !818 ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store i64 %2, ptr %i.mr, align 8, !tbaa !70, !noalias !818
  %.sroa.2.0..sroa_idx.i.i.i267 = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i267, align 8, !noalias !818
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11H_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.mq, align 8, !tbaa !62, !noalias !818
  store ptr %i.mq, ptr %21, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.mp, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
end_hunk_5
begin_hunk_6_@_ZN6spdlog17pattern_formatter12handle_flag_INS_7details18null_scoped_padderEEEvcNS2_12padding_infoE:bb.a
_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i367: ; preds = %bb.ch
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !62
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(24) %i.qc) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i367, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.fh

bb.ci:                                            ; preds = %bb.cg
  %i.qg = landingpad { ptr, i32 }
          cleanup
  %i.qh = load ptr, ptr %28, align 8, !tbaa !234  ; 3 uses
  %.not.i370 = icmp eq ptr %i.qh, null
  br i1 %.not.i370, label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371: ; preds = %bb.ci
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !62
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8
  call void %i.qk(ptr noundef nonnull align 8 dereferenceable(24) %i.qh) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375

_ZNSt10unique_ptrIN6spdlog7details11E_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit375: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i371, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.fi

bb.cj:                                            ; preds = %.loopexit
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37
  %i.qm = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !826 ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store i64 %2, ptr %i.qn, align 8, !tbaa !70, !noalias !826
  %.sroa.2.0..sroa_idx.i.i.i379 = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i379, align 8, !noalias !826
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11p_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.qm, align 8, !tbaa !62, !noalias !826
  store ptr %i.qm, ptr %29, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ql, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.qo = load ptr, ptr %29, align 8, !tbaa !234  ; 3 uses
  %.not.i380 = icmp eq ptr %i.qo, null
  br i1 %.not.i380, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381: ; preds = %bb.ck
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !62
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(24) %i.qo) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i381, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.qs, align 4, !tbaa !223
  br label %bb.fh

bb.cl:                                            ; preds = %bb.cj
  %i.qt = landingpad { ptr, i32 }
          cleanup
  %i.qu = load ptr, ptr %29, align 8, !tbaa !234  ; 3 uses
  %.not.i384 = icmp eq ptr %i.qu, null
  br i1 %.not.i384, label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385: ; preds = %bb.cl
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !62
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(24) %i.qu) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389

_ZNSt10unique_ptrIN6spdlog7details11p_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit389: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i385, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br label %bb.fi

bb.cm:                                            ; preds = %.loopexit
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37
  %i.qz = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !827 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  store i64 %2, ptr %i.ra, align 8, !tbaa !70, !noalias !827
  %.sroa.2.0..sroa_idx.i.i.i393 = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i393, align 8, !noalias !827
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11r_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.qz, align 8, !tbaa !62, !noalias !827
  store ptr %i.qz, ptr %30, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.qy, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.rb = load ptr, ptr %30, align 8, !tbaa !234  ; 3 uses
  %.not.i394 = icmp eq ptr %i.rb, null
  br i1 %.not.i394, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395: ; preds = %bb.cn
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !62
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(24) %i.rb) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i395, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.rf, align 4, !tbaa !223
  br label %bb.fh

bb.co:                                            ; preds = %bb.cm
  %i.rg = landingpad { ptr, i32 }
          cleanup
  %i.rh = load ptr, ptr %30, align 8, !tbaa !234  ; 3 uses
  %.not.i398 = icmp eq ptr %i.rh, null
  br i1 %.not.i398, label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399: ; preds = %bb.co
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !62
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(24) %i.rh) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403

_ZNSt10unique_ptrIN6spdlog7details11r_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit403: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i399, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  br label %bb.fi

bb.cp:                                            ; preds = %.loopexit
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  %i.rm = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !828 ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  store i64 %2, ptr %i.rn, align 8, !tbaa !70, !noalias !828
  %.sroa.2.0..sroa_idx.i.i.i407 = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i407, align 8, !noalias !828
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11R_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.rm, align 8, !tbaa !62, !noalias !828
  store ptr %i.rm, ptr %31, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.rl, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ro = load ptr, ptr %31, align 8, !tbaa !234  ; 3 uses
  %.not.i408 = icmp eq ptr %i.ro, null
  br i1 %.not.i408, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409: ; preds = %bb.cq
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !62
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8
  call void %i.rr(ptr noundef nonnull align 8 dereferenceable(24) %i.ro) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i409, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.rs, align 4, !tbaa !223
  br label %bb.fh

bb.cr:                                            ; preds = %bb.cp
  %i.rt = landingpad { ptr, i32 }
          cleanup
  %i.ru = load ptr, ptr %31, align 8, !tbaa !234  ; 3 uses
  %.not.i412 = icmp eq ptr %i.ru, null
  br i1 %.not.i412, label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413: ; preds = %bb.cr
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !62
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(24) %i.ru) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417

_ZNSt10unique_ptrIN6spdlog7details11R_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit417: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i413, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  br label %bb.fi

bb.cs:                                            ; preds = %.loopexit, %.loopexit
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.rz = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !829 ; 7 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store i64 %2, ptr %i.sa, align 8, !tbaa !70, !noalias !829
  %.sroa.2.0..sroa_idx.i.i.i421 = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i421, align 8, !noalias !829
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11T_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.rz, align 8, !tbaa !62, !noalias !829
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !232 ; 6 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !236
  %.not.i.i422 = icmp eq ptr %i.sc, %i.se
  br i1 %.not.i.i422, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sf = ptrtoint ptr %i.rz to i64
  store i64 %i.sf, ptr %i.sc, align 8, !tbaa !234
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store ptr %i.sg, ptr %i.sb, align 8, !tbaa !232
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

bb.cu:                                            ; preds = %bb.cs
  %i.sh = load ptr, ptr %i.ry, align 8, !tbaa !231 ; 10 uses
  %i.si = ptrtoint ptr %i.sc to i64               ; 2 uses
  %i.sj = ptrtoint ptr %i.sh to i64               ; 2 uses
  %i.sk = sub i64 %i.si, %i.sj                    ; 3 uses
  %i.sl = icmp eq i64 %i.sk, 9223372036854775800
  br i1 %i.sl, label %bb.cv, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #43
          to label %.noexc435 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447

.noexc435:                                        ; preds = %bb.cv
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423: ; preds = %bb.cu
  %i.sm = ashr exact i64 %i.sk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i424 = tail call i64 @llvm.umax.i64(i64 %i.sm, i64 1)
  %i.sn = add nsw i64 %.sroa.speculated.i.i.i.i424, %i.sm ; 2 uses
  %i.so = icmp ult i64 %i.sn, %i.sm
  %i.sp = tail call i64 @llvm.umin.i64(i64 %i.sn, i64 1152921504606846975)
  %i.sq = select i1 %i.so, i64 1152921504606846975, i64 %i.sp ; 3 uses
  %.not.i.i.i.i425 = icmp ne i64 %i.sq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i425)
  %i.sr = shl nuw nsw i64 %i.sq, 3
  %i.ss = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sr) #45
          to label %.noexc436 unwind label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447 ; 10 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.sk
  %i.su = ptrtoint ptr %i.rz to i64
  store i64 %i.su, ptr %i.st, align 8, !tbaa !234
  %.not10.i.i.i.i.i.i.i426 = icmp eq ptr %i.sh, %i.sc
  br i1 %.not10.i.i.i.i.i.i.i426, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader

.lr.ph.i.i.i.i.i.i.i427.preheader:                ; preds = %.noexc436
  %i.sv = add i64 %i.si, -8
  %i.sw = sub i64 %i.sv, %i.sj                    ; 3 uses
  %i.sx = lshr i64 %i.sw, 3
  %i.sy = add nuw nsw i64 %i.sx, 1                ; 2 uses
  %min.iters.check968 = icmp ult i64 %i.sw, 136
  br i1 %min.iters.check968, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027, label %vector.memcheck961

vector.memcheck961:                               ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader
  %i.sz = and i64 %i.sw, -8
  %i.ta = add i64 %i.sz, 8                        ; 2 uses
  %scevgep962 = getelementptr i8, ptr %i.ss, i64 %i.ta
  %scevgep963 = getelementptr i8, ptr %i.sh, i64 %i.ta
  %bound0964 = icmp ult ptr %i.ss, %scevgep963
  %bound1965 = icmp ult ptr %i.sh, %scevgep962
  %found.conflict966 = and i1 %bound0964, %bound1965
  br i1 %found.conflict966, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027, label %vector.ph969

vector.ph969:                                     ; preds = %vector.memcheck961
  %n.vec970 = and i64 %i.sy, 4611686018427387900  ; 3 uses
  %i.tb = shl i64 %n.vec970, 3                    ; 2 uses
  %i.tc = getelementptr i8, ptr %i.ss, i64 %i.tb  ; 2 uses
  %i.td = getelementptr i8, ptr %i.sh, i64 %i.tb
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %vector.ph969
  %index972 = phi i64 [ 0, %vector.ph969 ], [ %index.next977, %vector.body971 ] ; 2 uses
  %i.te = shl i64 %index972, 3                    ; 2 uses
  %next.gep973 = getelementptr i8, ptr %i.ss, i64 %i.te ; 2 uses
  %next.gep974 = getelementptr i8, ptr %i.sh, i64 %i.te ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.tf = getelementptr i8, ptr %next.gep974, i64 16
  %wide.load975 = load <2 x i64>, ptr %next.gep974, align 8, !tbaa !234, !alias.scope !832, !noalias !830
  %wide.load976 = load <2 x i64>, ptr %i.tf, align 8, !tbaa !234, !alias.scope !832, !noalias !830
  %i.tg = getelementptr i8, ptr %next.gep973, i64 16
  store <2 x i64> %wide.load975, ptr %next.gep973, align 8, !tbaa !234, !alias.scope !833, !noalias !832
  store <2 x i64> %wide.load976, ptr %i.tg, align 8, !tbaa !234, !alias.scope !833, !noalias !832
  %i.th = getelementptr i8, ptr %next.gep974, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep974, align 8, !tbaa !234, !alias.scope !832, !noalias !830
  store <2 x ptr> splat (ptr null), ptr %i.th, align 8, !tbaa !234, !alias.scope !832, !noalias !830
  %index.next977 = add nuw i64 %index972, 4       ; 2 uses
  %i.ti = icmp eq i64 %index.next977, %n.vec970
  br i1 %i.ti, label %middle.block978, label %vector.body971, !llvm.loop !763

middle.block978:                                  ; preds = %vector.body971
  %cmp.n979 = icmp eq i64 %i.sy, %n.vec970
  br i1 %cmp.n979, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427.preheader1027

.lr.ph.i.i.i.i.i.i.i427.preheader1027:            ; preds = %vector.memcheck961, %.lr.ph.i.i.i.i.i.i.i427.preheader, %middle.block978
  %.012.i.i.i.i.i.i.i428.ph = phi ptr [ %i.ss, %vector.memcheck961 ], [ %i.ss, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.tc, %middle.block978 ]
  %.0911.i.i.i.i.i.i.i429.ph = phi ptr [ %i.sh, %vector.memcheck961 ], [ %i.sh, %.lr.ph.i.i.i.i.i.i.i427.preheader ], [ %i.td, %middle.block978 ]
  br label %.lr.ph.i.i.i.i.i.i.i427

.lr.ph.i.i.i.i.i.i.i427:                          ; preds = %.lr.ph.i.i.i.i.i.i.i427.preheader1027, %.lr.ph.i.i.i.i.i.i.i427
  %.012.i.i.i.i.i.i.i428 = phi ptr [ %i.tl, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.012.i.i.i.i.i.i.i428.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1027 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i429 = phi ptr [ %i.tk, %.lr.ph.i.i.i.i.i.i.i427 ], [ %.0911.i.i.i.i.i.i.i429.ph, %.lr.ph.i.i.i.i.i.i.i427.preheader1027 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.tj = load i64, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !234, !alias.scope !831, !noalias !830
  store i64 %i.tj, ptr %.012.i.i.i.i.i.i.i428, align 8, !tbaa !234, !alias.scope !830, !noalias !831
  store ptr null, ptr %.0911.i.i.i.i.i.i.i429, align 8, !tbaa !234, !alias.scope !831, !noalias !830
  %i.tk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i429, i64 8 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i428, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i430 = icmp eq ptr %i.tk, %i.sc
  br i1 %.not.i.i.i.i.i.i.i430, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431, label %.lr.ph.i.i.i.i.i.i.i427, !llvm.loop !764

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431: ; preds = %.lr.ph.i.i.i.i.i.i.i427, %middle.block978, %.noexc436
  %.0.lcssa.i.i.i.i.i.i.i432 = phi ptr [ %i.ss, %.noexc436 ], [ %i.tc, %middle.block978 ], [ %i.tl, %.lr.ph.i.i.i.i.i.i.i427 ]
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i432, i64 8
  %.not.i23.i.i.i433 = icmp eq ptr %i.sh, null
  br i1 %.not.i23.i.i.i433, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  tail call void @_ZdlPv(ptr noundef nonnull %i.sh) #44
  br label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434

_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434: ; preds = %bb.cw, %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i431
  store ptr %i.ss, ptr %i.ry, align 8, !tbaa !231
  store ptr %i.tm, ptr %i.sb, align 8, !tbaa !232
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.sq
  store ptr %i.tn, ptr %i.sd, align 8, !tbaa !236
  br label %_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i434, %bb.ct
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.to, align 4, !tbaa !223
  br label %bb.fh

_ZNSt10unique_ptrIN6spdlog7details11T_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit447: ; preds = %bb.cv, %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i423
  %i.tp = landingpad { ptr, i32 }
          cleanup
  %i.tq = load ptr, ptr %i.rz, align 8, !tbaa !62
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8
  tail call void %i.ts(ptr noundef nonnull align 8 dereferenceable(24) %i.rz) #37, !inline_history !19
  br label %bb.fi

bb.cx:                                            ; preds = %.loopexit
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #37
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.tv = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #45, !noalias !834 ; 7 uses
  %i.tw = load i32, ptr %i.tu, align 8, !tbaa !193, !noalias !834
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  store i64 %2, ptr %i.tx, align 8, !tbaa !70, !noalias !834
  %.sroa.2.0..sroa_idx.i.i.i451 = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i451, align 8, !noalias !834
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details11z_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.tv, align 8, !tbaa !62, !noalias !834
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 24
  store i32 %i.tw, ptr %i.ty, align 8, !tbaa !267, !noalias !834
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 32
  store i64 0, ptr %i.tz, align 8, !tbaa !70, !noalias !834
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tv, i64 40
  store i32 0, ptr %i.ua, align 8, !tbaa !268, !noalias !834
  store ptr %i.tv, ptr %32, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.tt, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ub = load ptr, ptr %32, align 8, !tbaa !234  ; 3 uses
  %.not.i452 = icmp eq ptr %i.ub, null
  br i1 %.not.i452, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453: ; preds = %bb.cy
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !62
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8
  call void %i.ue(ptr noundef nonnull align 8 dereferenceable(24) %i.ub) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i453, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.uf, align 4, !tbaa !223
  br label %bb.fh

bb.cz:                                            ; preds = %bb.cx
  %i.ug = landingpad { ptr, i32 }
          cleanup
  %i.uh = load ptr, ptr %32, align 8, !tbaa !234  ; 3 uses
  %.not.i456 = icmp eq ptr %i.uh, null
  br i1 %.not.i456, label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457: ; preds = %bb.cz
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !62
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8
  call void %i.uk(ptr noundef nonnull align 8 dereferenceable(24) %i.uh) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461

_ZNSt10unique_ptrIN6spdlog7details11z_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit461: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i457, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #37
  br label %bb.fi

bb.da:                                            ; preds = %.loopexit
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #37
  %i.um = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !835 ; 4 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store i64 %2, ptr %i.un, align 8, !tbaa !70, !noalias !835
  %.sroa.2.0..sroa_idx.i.i.i465 = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i465, align 8, !noalias !835
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6spdlog7details13pid_formatterINS0_18null_scoped_padderEEE, i64 16), ptr %i.um, align 8, !tbaa !62, !noalias !835
  store ptr %i.um, ptr %33, align 8, !tbaa !249
  invoke void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ul, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.db unwind label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.uo = load ptr, ptr %33, align 8, !tbaa !234  ; 3 uses
  %.not.i466 = icmp eq ptr %i.uo, null
  br i1 %.not.i466, label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467: ; preds = %bb.db
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !62
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(24) %i.uo) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i467, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  br label %bb.fh

bb.dc:                                            ; preds = %bb.da
  %i.us = landingpad { ptr, i32 }
          cleanup
  %i.ut = load ptr, ptr %33, align 8, !tbaa !234  ; 3 uses
  %.not.i470 = icmp eq ptr %i.ut, null
  br i1 %.not.i470, label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475, label %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i471

_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i471: ; preds = %bb.dc
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !62
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8
  call void %i.uw(ptr noundef nonnull align 8 dereferenceable(24) %i.ut) #37, !inline_history !19
  br label %_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475

_ZNSt10unique_ptrIN6spdlog7details13pid_formatterINS1_18null_scoped_padderEEESt14default_deleteIS4_EED2Ev.exit475: ; preds = %_ZNKSt14default_deleteIN6spdlog7details14flag_formatterEEclEPS2_.exit.i471, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  br label %bb.fi

bb.dd:                                            ; preds = %.loopexit
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #37
  %i.uy = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #45, !noalias !836 ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  store i64 %2, ptr %i.uz, align 8, !tbaa !70, !noalias !836
  %.sroa.2.0..sroa_idx.i.i.i479 = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i479, align 8, !noalias !836
end_hunk_6
