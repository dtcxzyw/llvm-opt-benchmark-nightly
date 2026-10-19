Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_parsers?download=true
inline.NumInlined: 475
inline.NumDeleted: 180
begin_hunk_0_@Z3_eval_smtlib2_string:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %i.cw, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !168
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef ptr %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) #20
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.dg)
          to label %bb.aq unwind label %bb.ap     ; 0 uses

bb.ao:                                            ; preds = %bb.al
  %i.di = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.az

bb.ap:                                            ; preds = %bb.an
  %i.dj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.az

bb.aq:                                            ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codeONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.dk = load ptr, ptr %9, align 8, !tbaa !268   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.as
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !269
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  invoke void @__cxa_end_catch()
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.dp = load ptr, ptr %i.ap, align 8, !tbaa !293, !nonnull !291, !align !292
  invoke void @_Z18set_verbose_streamRSo(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dq = load ptr, ptr %i.ar, align 8, !tbaa !290
  invoke void @_Z18set_warning_streamPSo(ptr noundef %i.dq)
          to label %_ZN11cmd_context15scoped_redirectD2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #21
  unreachable

_ZN11cmd_context15scoped_redirectD2Ev.exit:       ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.dt = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dt, ptr %3, align 8, !tbaa !168
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dv = getelementptr i8, ptr %i.dt, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %3, i64 %i.dw
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !168
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dy, align 8, !tbaa !168
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !268 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN11cmd_context15scoped_redirectD2Ev.exit
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !269
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #24
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN11cmd_context15scoped_redirectD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dy, align 8, !tbaa !168
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ef) #20
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.eg, ptr %3, align 8, !tbaa !168
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.ei = getelementptr i8, ptr %i.eg, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %3, i64 %i.ej
  store ptr %i.eh, ptr %i.ek, align 8, !tbaa !168
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.el, align 8, !tbaa !272
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.em) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.bi

bb.aw:                                            ; preds = %bb.aq
  %i.en = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.ax:                                            ; preds = %bb.ar
  %i.eo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ep = load ptr, ptr %9, align 8, !tbaa !268   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.ax
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !269
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.aw
  %.pn52 = phi { ptr, i32 } [ %i.en, %bb.aw ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.eo, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.az

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.eu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ba

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.ap, %bb.ao
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.dj, %bb.ap ], [ %i.di, %bb.ao ]
  invoke void @__cxa_end_catch()
          to label %bb.ba unwind label %bb.bw

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn55 = phi { ptr, i32 } [ %i.eu, %bb.ay ], [ %.pn52.pn, %bb.az ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn55, 1
  %.538 = extractvalue { ptr, i32 } %.pn55, 0
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ak
  %.639 = phi ptr [ %.538, %bb.ba ], [ %.235, %bb.ak ]
  %.6 = phi i32 [ %.5, %bb.ba ], [ %.2, %bb.ak ]
  call void @_ZN11cmd_context15scoped_redirectD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ah
  %.740 = phi ptr [ %.639, %bb.bb ], [ %i.cj, %bb.ah ]
  %.7 = phi i32 [ %.6, %bb.bb ], [ %i.ck, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ag
  %.841 = phi ptr [ %.740, %bb.bc ], [ %i.cg, %bb.ag ]
  %.8 = phi i32 [ %.7, %bb.bc ], [ %i.ch, %bb.ag ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #20
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %.942 = phi ptr [ %.841, %bb.bd ], [ %.033, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  %.9 = phi i32 [ %.8, %bb.bd ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.o
  %.1043 = phi ptr [ %.942, %bb.be ], [ %i.r, %bb.o ] ; 2 uses
  %.10 = phi i32 [ %.9, %bb.be ], [ %i.s, %bb.o ] ; 2 uses
  %i.ev = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #20
  %i.ew = icmp eq i32 %.10, %i.ev
  br i1 %i.ew, label %bb.bg, label %bb.bu

bb.bg:                                            ; preds = %bb.bf
  %i.ex = call ptr @__cxa_begin_catch(ptr %.1043) #20
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ex)
          to label %bb.bh unwind label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  invoke void @__cxa_end_catch()
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %bb.bh, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !280, !noalias !353 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.bi
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 48
  %12 = load ptr, ptr %i.fb, align 8, !tbaa !354, !noalias !353 ; 2 uses
  %13 = icmp ugt ptr %i.fa, %12
  %.08.i.i.i92 = select i1 %13, ptr %i.fa, ptr %12
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !281, !noalias !353
  %i.fe = ptrtoint ptr %.08.i.i.i92 to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !270, !noalias !353
  %i.fi = load ptr, ptr %11, align 8, !tbaa !268, !noalias !353
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fg
  store i8 0, ptr %i.fj, align 1, !tbaa !269, !noalias !353
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.bi
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.fl, ptr %10, align 8, !tbaa !267, !alias.scope !353
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !268, !noalias !353 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bj:                                            ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !270, !noalias !353 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 16
  call void @llvm.assume(i1 %i.fr)
  %i.fs = add nuw nsw i64 %i.fq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fl, ptr noundef nonnull align 8 dereferenceable(1) %i.fn, i64 %i.fs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.fm, ptr %10, align 8, !tbaa !268, !alias.scope !353
  %i.ft = load i64, ptr %i.fn, align 8, !tbaa !269, !noalias !353
  store i64 %i.ft, ptr %i.fl, align 8, !tbaa !269, !alias.scope !353
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !270, !noalias !353
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bj
  %i.fu = phi i64 [ %i.fq, %bb.bj ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.fu, ptr %i.fw, align 8, !tbaa !270, !alias.scope !353
  store ptr %i.fn, ptr %i.fk, align 8, !tbaa !268, !noalias !353
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.fv, i8 0, i64 9, i1 false), !noalias !353
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ey, ptr noundef nonnull %i.fn, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bk

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.fx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fy = load ptr, ptr %10, align 8, !tbaa !268, !alias.scope !353 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.fl
  br i1 %i.fz, label %.body96, label %.body96.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ga = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.bl unwind label %bb.br     ; 2 uses

bb.bl:                                            ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gb = load ptr, ptr %10, align 8, !tbaa !268  ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fl
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.bl
  %i.gd = load i64, ptr %i.fl, align 8, !tbaa !269
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %i.c, label %bb.bm, label %_ZN10z3_log_ctxD2Ev.exit, !prof !165

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  invoke void @_Z4SetRPKv(ptr noundef %i.ga)
          to label %bb.bs unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bg
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bp unwind label %bb.bw

bb.bo:                                            ; preds = %bb.bh
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.pn57 = phi { ptr, i32 } [ %i.gg, %bb.bo ], [ %i.gf, %bb.bn ] ; 2 uses
  %.11 = extractvalue { ptr, i32 } %.pn57, 1
  %.1144 = extractvalue { ptr, i32 } %.pn57, 0
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bm
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.br:                                            ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %10, align 8, !tbaa !268  ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.fl
  br i1 %i.gk, label %.body96, label %.body96.sink.split

.body96.sink.split:                               ; preds = %bb.br, %bb.bk
  %.sink154 = phi ptr [ %i.fy, %bb.bk ], [ %i.gj, %bb.br ]
  %.pn59.ph = phi { ptr, i32 } [ %i.fx, %bb.bk ], [ %i.gi, %bb.br ]
  %i.gl = load i64, ptr %i.fl, align 8, !tbaa !269
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %.sink154, i64 noundef %i.gm) #24
  br label %.body96

.body96:                                          ; preds = %.body96.sink.split, %bb.br, %bb.bk
  %.pn59 = phi { ptr, i32 } [ %i.fx, %bb.bk ], [ %i.gi, %bb.br ], [ %.pn59.ph, %.body96.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bm
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.bs
  %i.gn = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gn, ptr %2, align 8, !tbaa !168
  %i.go = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.gp = getelementptr i8, ptr %i.gn, i64 -24
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds i8, ptr %2, i64 %i.gq
  store ptr %i.go, ptr %i.gr, align 8, !tbaa !168
  %i.gs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ey, align 8, !tbaa !168
  %i.gu = load ptr, ptr %i.fk, align 8, !tbaa !268 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.fn
  br i1 %i.gv, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104: ; preds = %_ZN10z3_log_ctxD2Ev.exit
  %i.gw = load i64, ptr %i.fn, align 8, !tbaa !269
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN10z3_log_ctxD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ey, align 8, !tbaa !168
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gy) #20
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.gz, ptr %2, align 8, !tbaa !168
  %i.ha = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.hb = getelementptr i8, ptr %i.gz, i64 -24
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds i8, ptr %2, i64 %i.hc
  store ptr %i.ha, ptr %i.hd, align 8, !tbaa !168
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.he, align 8, !tbaa !272
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.hf) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %i.ga

bb.bt:                                            ; preds = %.body96, %bb.bq
  %.pn61 = phi { ptr, i32 } [ %i.gh, %bb.bq ], [ %.pn59, %.body96 ] ; 2 uses
  %.13 = extractvalue { ptr, i32 } %.pn61, 1
  %.1346 = extractvalue { ptr, i32 } %.pn61, 0
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bp, %bb.bf
  %.1447 = phi ptr [ %.1346, %bb.bt ], [ %.1144, %bb.bp ], [ %.1043, %bb.bf ] ; 2 uses
  %.14 = phi i32 [ %.13, %bb.bt ], [ %.11, %bb.bp ], [ %.10, %bb.bf ] ; 2 uses
  br i1 %i.c, label %bb.bv, label %_ZN10z3_log_ctxD2Ev.exit106, !prof !166

bb.bv:                                            ; preds = %.thread111, %bb.bu
  %.14117 = phi i32 [ %i.f, %.thread111 ], [ %.14, %bb.bu ]
  %.1447115 = phi ptr [ %i.e, %.thread111 ], [ %.1447, %bb.bu ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit106

_ZN10z3_log_ctxD2Ev.exit106:                      ; preds = %bb.bu, %bb.bv
  %.14116 = phi i32 [ %.14, %bb.bu ], [ %.14117, %bb.bv ]
  %.1447114 = phi ptr [ %.1447, %bb.bu ], [ %.1447115, %bb.bv ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.hg = insertvalue { ptr, i32 } poison, ptr %.1447114, 0
  %i.hh = insertvalue { ptr, i32 } %i.hg, i32 %.14116, 1
  resume { ptr, i32 } %i.hh

bb.bw:                                            ; preds = %bb.bn, %bb.az
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare void @_Z26log_Z3_eval_smtlib2_stringP11_Z3_contextPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11cmd_contextC1EbP11ast_managerRK6symbol(ptr noundef nonnull align 8 dereferenceable(936), i1 noundef zeroext, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN10scoped_ptrI11cmd_contextEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !169    ; 5 uses
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
