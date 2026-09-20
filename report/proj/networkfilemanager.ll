Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/networkfilemanager?download=true
inline.NumInlined: 2372
inline.NumDeleted: 867
begin_hunk_0_@_ZN5osgeo4proj26NetworkFilePropertiesCache6insertEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_14FilePropertiesE:bb.a
  %i.dc = load <2 x i64>, ptr %i.db, align 8, !tbaa !38
  store <2 x i64> %i.dc, ptr %i.y, align 8, !tbaa !38
  %.not.i91 = icmp eq ptr %i.cm, null
  br i1 %.not.i91, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i90
  store ptr %i.cm, ptr %8, align 8, !tbaa !37
  store i64 %i.da, ptr %i.cp, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit96

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i90, %.thread.i95
  store ptr %i.cp, ptr %8, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i92, %bb.ac, %bb.ad
  %i.dd = phi ptr [ %.pre.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i92 ], [ %i.cm, %bb.ac ], [ %i.cp, %bb.ad ]
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.de, align 8, !tbaa !69
  store i8 0, ptr %i.dd, align 1, !tbaa !38
  %i.df = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %.critedge76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit96
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !38
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #30
  br label %.critedge76

.critedge76:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.dk = load i64, ptr %3, align 8, !tbaa !152
  %i.dl = load i64, ptr %6, align 8, !tbaa !152
  %.not66 = icmp eq i64 %i.dk, %i.dl
  br i1 %.not66, label %bb.ae, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.ae:                                            ; preds = %.critedge76
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !69 ; 3 uses
  %i.dp = load i64, ptr %i.v, align 8, !tbaa !69
  %i.dq = icmp eq i64 %i.do, %i.dp
  br i1 %i.dq, label %bb.af, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.dr = icmp eq i64 %i.do, 0
  br i1 %i.dr, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread189, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.af
  %i.ds = load ptr, ptr %i.t, align 8, !tbaa !37
  %i.dt = load ptr, ptr %i.dm, align 8, !tbaa !37
  %bcmp.i.i = call i32 @bcmp(ptr %i.dt, ptr %i.ds, i64 %i.do)
  %.not202.a = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not202.a, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread189, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread189: ; preds = %bb.af, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !69 ; 3 uses
  %i.dx = load i64, ptr %i.y, align 8, !tbaa !69
  %i.dy = icmp eq i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.ag, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.ag:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread189
  %i.dz = icmp eq i64 %i.dw, 0
  br i1 %i.dz, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit101

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit101: ; preds = %bb.ag
  %i.ea = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !37
  %bcmp.i.i100 = call i32 @bcmp(ptr %i.eb, ptr %i.ea, i64 %i.dw)
  %.not203.a = icmp eq i32 %bcmp.i.i100, 0
  br i1 %.not203.a, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread189, %bb.ae, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit101, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %.critedge76
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ec = load ptr, ptr %4, align 8, !tbaa !83
  invoke void @_ZN5osgeo4proj14DiskChunkCache7prepareEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.ec, ptr noundef nonnull @.str.51)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ed = load ptr, ptr %9, align 8, !tbaa !89    ; 6 uses
  %i.ee = load ptr, ptr %5, align 8, !tbaa !89    ; 3 uses
  store ptr %i.ed, ptr %5, align 8, !tbaa !89
  %.not.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5osgeo4proj15SQLiteStatementESt14default_deleteIS2_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !92
  %i.eg = invoke i32 @sqlite3_finalize(ptr noundef %i.ef)
          to label %_ZNKSt14default_deleteIN5osgeo4proj15SQLiteStatementEEclEPS2_.exit.i.i.i.i unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #34
  unreachable

_ZNKSt14default_deleteIN5osgeo4proj15SQLiteStatementEEclEPS2_.exit.i.i.i.i: ; preds = %bb.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef 16) #30
  br label %_ZNSt10unique_ptrIN5osgeo4proj15SQLiteStatementESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj15SQLiteStatementESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj15SQLiteStatementEEclEPS2_.exit.i.i.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.not204.a = icmp eq ptr %i.ed, null
  br i1 %.not204.a, label %.critedge80, label %bb.ar

bb.ak:                                            ; preds = %_ZN5osgeo4proj15SQLiteStatement8bindNullEv.exit164, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.ck, %bb.cj, %bb.ci, %bb.f, %bb.e, %bb.cr, %bb.cq
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.al:                                            ; preds = %bb.g
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit124

bb.am:                                            ; preds = %bb.h
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit124

bb.an:                                            ; preds = %.noexc.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit124

bb.ao:                                            ; preds = %bb.bz, %_ZN5osgeo4proj15SQLiteStatement8bindNullEv.exit138, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.bs, %bb.ar, %.critedge, %bb.cb, %bb.ca
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit124

bb.ap:                                            ; preds = %.noexc.i85
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit124

bb.aq:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit124

bb.ar:                                            ; preds = %_ZNSt10unique_ptrIN5osgeo4proj15SQLiteStatementESt14default_deleteIS2_EED2Ev.exit
  %i.eq = load ptr, ptr %2, align 8, !tbaa !37
  %i.er = load ptr, ptr %i.ed, align 8, !tbaa !92
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !98
  %i.eu = invoke i32 @sqlite3_bind_text(ptr noundef %i.er, i32 noundef %i.et, ptr noundef %i.eq, i32 noundef -1, ptr noundef null)
          to label %bb.as unwind label %bb.ao     ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.ev = load i32, ptr %i.es, align 8, !tbaa !98
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.es, align 8, !tbaa !98
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_.exit, %bb.as
  %.pre243.a = phi ptr [ %i.ed, %bb.as ], [ %.pre244, %_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_.exit ] ; 2 uses
  %i.ex = phi ptr [ %i.ed, %bb.as ], [ %i.fu, %_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_.exit ] ; 6 uses
  %.sroa.0177.0 = phi ptr [ null, %bb.as ], [ %.sroa.0177.1, %_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_.exit ] ; 16 uses
  %.sroa.11.0 = phi ptr [ null, %bb.as ], [ %.sroa.11.1, %_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_.exit ] ; 8 uses
  %.sroa.15.0 = phi ptr [ null, %bb.as ], [ %.sroa.15.1, %_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_.exit ] ; 9 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !92
  %i.ez = invoke noundef i32 @sqlite3_step(ptr noundef %i.ey)
          to label %_ZN5osgeo4proj15SQLiteStatement7executeEv.exit106 unwind label %.loopexit

_ZN5osgeo4proj15SQLiteStatement7executeEv.exit106: ; preds = %bb.at
  %i.fa = icmp eq i32 %i.ez, 100
  br i1 %i.fa, label %bb.au, label %.preheader

.preheader:                                       ; preds = %_ZN5osgeo4proj15SQLiteStatement7executeEv.exit106
  %.not205229 = icmp eq ptr %.sroa.0177.0, %.sroa.11.0
  br i1 %.not205229, label %._crit_edge, label %.lr.ph

bb.au:                                            ; preds = %_ZN5osgeo4proj15SQLiteStatement7executeEv.exit106
  %i.fb = load ptr, ptr %i.ex, align 8, !tbaa !92
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !93
  %i.fe = invoke noundef i64 @sqlite3_column_int64(ptr noundef %i.fb, i32 noundef %i.fd)
          to label %bb.av unwind label %.loopexit209 ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.ff = load i32, ptr %i.fc, align 4, !tbaa !93
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fc, align 4, !tbaa !93
  %.not.i109 = icmp eq ptr %.sroa.11.0, %.sroa.15.0
  br i1 %.not.i109, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i64 %i.fe, ptr %.sroa.11.0, align 8, !tbaa !97
  br label %_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_.exit

bb.ax:                                            ; preds = %bb.av
  %i.fh = ptrtoint ptr %.sroa.11.0 to i64
  %i.fi = ptrtoint ptr %.sroa.0177.0 to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 7 uses
  %i.fk = icmp eq i64 %i.fj, 9223372036854775800
  br i1 %i.fk, label %bb.ay, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.103) #32
          to label %.noexc110 unwind label %.loopexit.split-lp210

.noexc110:                                        ; preds = %bb.ay
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ax
  %i.fl = ashr exact i64 %i.fj, 3
  %mul2.i.i = ashr exact i64 %i.fj, 2
  %13 = call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.fm = icmp ult i64 %13, %i.fl
  %i.fn = call i64 @llvm.umin.i64(i64 %13, i64 1152921504606846975)
  %i.fo = select i1 %i.fm, i64 1152921504606846975, i64 %i.fn ; 2 uses
  %i.fp = shl nuw nsw i64 %i.fo, 3
  %i.fq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #31
          to label %.noexc111 unwind label %.loopexit209 ; 4 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 %i.fj ; 2 uses
  store i64 %i.fe, ptr %i.fr, align 8, !tbaa !97
  %i.fs = icmp sgt i64 %i.fj, 0
  br i1 %i.fs, label %bb.az, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

bb.az:                                            ; preds = %.noexc111
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fq, ptr align 8 %.sroa.0177.0, i64 %i.fj, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i: ; preds = %bb.az, %.noexc111
  %.not.i17.i.i = icmp eq ptr %.sroa.0177.0, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0177.0, i64 noundef %i.fj) #30
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !89
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i: ; preds = %bb.ba, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.ba ], [ %.pre243.a, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fo
  br label %_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_.exit

_ZNSt6vectorIxSaIxEE12emplace_backIJxEEERxDpOT_.exit: ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, %bb.aw
  %.pre244 = phi ptr [ %.pre, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %.pre243.a, %bb.aw ]
  %i.fu = phi ptr [ %.pre, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.ex, %bb.aw ] ; 2 uses
  %.sroa.0177.1 = phi ptr [ %i.fq, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %.sroa.0177.0, %bb.aw ]
  %.pn207 = phi ptr [ %i.fr, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %.sroa.11.0, %bb.aw ]
  %.sroa.15.1 = phi ptr [ %i.ft, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %.sroa.15.0, %bb.aw ]
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn207, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.fv, align 4, !tbaa !93
  br label %bb.at, !llvm.loop !240

.loopexit:                                        ; preds = %bb.at
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp:                               ; preds = %bb.bi, %bb.bj, %bb.bg, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit209:                                     ; preds = %bb.au, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.15.0.lcssa232 = phi ptr [ %.sroa.15.0, %bb.au ], [ %.sroa.11.0, %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp210:                            ; preds = %bb.ay
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

._crit_edge:                                      ; preds = %bb.bb, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.fw = load ptr, ptr %4, align 8, !tbaa !83
  invoke void @_ZN5osgeo4proj14DiskChunkCache7prepareEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %10, ptr noundef nonnull align 8 dereferenceable(56) %i.fw, ptr noundef nonnull @.str.52)
          to label %bb.bd unwind label %bb.bf

.lr.ph:                                           ; preds = %.preheader, %bb.bb
  %.sroa.0173.0230 = phi ptr [ %i.ga, %bb.bb ], [ %.sroa.0177.0, %.preheader ] ; 2 uses
  %i.fx = load i64, ptr %.sroa.0173.0230, align 8, !tbaa !97
  %i.fy = load ptr, ptr %4, align 8, !tbaa !83
  %i.fz = invoke noundef zeroext i1 @_ZN5osgeo4proj14DiskChunkCache12move_to_tailEx(ptr noundef nonnull align 8 dereferenceable(56) %i.fy, i64 noundef %i.fx)
          to label %bb.bb unwind label %bb.bc     ; 0 uses

bb.bb:                                            ; preds = %.lr.ph
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0173.0230, i64 8 ; 2 uses
  %.not205.a = icmp eq ptr %i.ga, %.sroa.11.0
  br i1 %.not205.a, label %._crit_edge, label %.lr.ph

bb.bc:                                            ; preds = %.lr.ph
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bd:                                            ; preds = %._crit_edge
  %i.gc = load ptr, ptr %10, align 8, !tbaa !89   ; 5 uses
  store ptr null, ptr %10, align 8, !tbaa !89
  store ptr %i.gc, ptr %5, align 8, !tbaa !89
  %i.gd = load ptr, ptr %i.ex, align 8, !tbaa !92
  %i.ge = invoke i32 @sqlite3_finalize(ptr noundef %i.gd)
          to label %_ZNSt10unique_ptrIN5osgeo4proj15SQLiteStatementESt14default_deleteIS2_EED2Ev.exit117 unwind label %bb.be ; 0 uses

bb.be:                                            ; preds = %bb.bd
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #34
  unreachable

_ZNSt10unique_ptrIN5osgeo4proj15SQLiteStatementESt14default_deleteIS2_EED2Ev.exit117: ; preds = %bb.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %.not206 = icmp eq ptr %i.gc, null
  br i1 %.not206, label %.critedge78, label %bb.bg

bb.bf:                                            ; preds = %._crit_edge
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.bm

bb.bg:                                            ; preds = %_ZNSt10unique_ptrIN5osgeo4proj15SQLiteStatementESt14default_deleteIS2_EED2Ev.exit117
  %i.gi = load ptr, ptr %2, align 8, !tbaa !37
  %i.gj = load ptr, ptr %i.gc, align 8, !tbaa !92
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !98
  %i.gm = invoke i32 @sqlite3_bind_text(ptr noundef %i.gj, i32 noundef %i.gl, ptr noundef %i.gi, i32 noundef -1, ptr noundef null)
          to label %bb.bh unwind label %.loopexit.split-lp ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.gn = load i32, ptr %i.gk, align 8, !tbaa !98
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gk, align 8, !tbaa !98
  %i.gp = load ptr, ptr %i.gc, align 8, !tbaa !92
  %i.gq = invoke noundef i32 @sqlite3_step(ptr noundef %i.gp)
          to label %_ZN5osgeo4proj15SQLiteStatement7executeEv.exit121 unwind label %.loopexit.split-lp

_ZN5osgeo4proj15SQLiteStatement7executeEv.exit121: ; preds = %bb.bh
  %.not67 = icmp eq i32 %i.gq, 101
  br i1 %.not67, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %_ZN5osgeo4proj15SQLiteStatement7executeEv.exit121
  %i.gr = invoke ptr @sqlite3_errmsg(ptr noundef %i.g)
          to label %bb.bj unwind label %.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %i.gr)
          to label %.critedge78 unwind label %.loopexit.split-lp

bb.bk:                                            ; preds = %_ZN5osgeo4proj15SQLiteStatement7executeEv.exit121
  %.not.i.i.i122.a = icmp eq ptr %.sroa.0177.0, null
  br i1 %.not.i.i.i122.a, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gs = ptrtoint ptr %.sroa.15.0 to i64
  %i.gt = ptrtoint ptr %.sroa.0177.0 to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0177.0, i64 noundef %i.gu) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

bb.bm:                                            ; preds = %.loopexit209, %.loopexit.split-lp210, %.loopexit, %.loopexit.split-lp, %bb.bf, %bb.bc
  %.sroa.15.0234 = phi ptr [ %.sroa.15.0, %.loopexit.split-lp ], [ %.sroa.15.0, %bb.bc ], [ %.sroa.15.0, %bb.bf ], [ %.sroa.15.0, %.loopexit ], [ %.sroa.15.0.lcssa232, %.loopexit209 ], [ %.sroa.11.0, %.loopexit.split-lp210 ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.gb, %bb.bc ], [ %i.gh, %bb.bf ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit211, %.loopexit209 ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp210 ] ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %.sroa.0177.0, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIxSaIxEED2Ev.exit124, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gv = ptrtoint ptr %.sroa.15.0234 to i64
  %i.gw = ptrtoint ptr %.sroa.0177.0 to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0177.0, i64 noundef %i.gx) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit124

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.ag, %bb.bl, %bb.bk, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.gy = load ptr, ptr %4, align 8, !tbaa !83
  invoke void @_ZN5osgeo4proj14DiskChunkCache7prepareEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %11, ptr noundef nonnull align 8 dereferenceable(56) %i.gy, ptr noundef nonnull @.str.53)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.gz = load ptr, ptr %11, align 8, !tbaa !89   ; 12 uses
  %i.ha = load ptr, ptr %5, align 8, !tbaa !89    ; 3 uses
  store ptr %i.gz, ptr %5, align 8, !tbaa !89
  %.not.i.i.i.i125 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i125, label %_ZNSt10unique_ptrIN5osgeo4proj15SQLiteStatementESt14default_deleteIS2_EED2Ev.exit130, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !92
  %i.hc = invoke i32 @sqlite3_finalize(ptr noundef %i.hb)
          to label %_ZNKSt14default_deleteIN5osgeo4proj15SQLiteStatementEEclEPS2_.exit.i.i.i.i126 unwind label %bb.bq ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #34
  unreachable

_ZNKSt14default_deleteIN5osgeo4proj15SQLiteStatementEEclEPS2_.exit.i.i.i.i126: ; preds = %bb.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef 16) #30
  br label %_ZNSt10unique_ptrIN5osgeo4proj15SQLiteStatementESt14default_deleteIS2_EED2Ev.exit130

_ZNSt10unique_ptrIN5osgeo4proj15SQLiteStatementESt14default_deleteIS2_EED2Ev.exit130: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj15SQLiteStatementEEclEPS2_.exit.i.i.i.i126, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %.not208 = icmp eq ptr %i.gz, null
  br i1 %.not208, label %.critedge80, label %bb.bs

bb.br:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
end_hunk_0
