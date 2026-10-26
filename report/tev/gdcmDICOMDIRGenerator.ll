Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmDICOMDIRGenerator?download=true
inline.NumInlined: 3527
inline.NumDeleted: 1066
begin_hunk_0_@_ZN4gdcm17DICOMDIRGenerator25AddPatientDirectoryRecordEv:bb.a
  invoke void @_ZN4gdcm7DataSet17InsertDataElementERKNS_11DataElementE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit92 unwind label %bb.cj

_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit92: ; preds = %bb.an, %bb.an, %bb.an, %bb.am, %bb.ao
  %i.cm = load ptr, ptr %i.al, align 8, !tbaa !65 ; 4 uses
  %.not.i.i148 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i148, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit92
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !56 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.cq, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
          to label %.noexc.i151 unwind label %bb.av

.noexc.i151:                                      ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.cq) #22
  br label %.body.i149

bb.at:                                            ; preds = %bb.ap
  %i.cs = add nsw i64 %i.co, -1                   ; 2 uses
  store i64 %i.cs, ptr %i.cn, align 8, !tbaa !56
  %.not.i.i.i152 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i152, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !58
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #22, !inline_history !4
  br label %bb.aw

bb.av:                                            ; preds = %bb.ar
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i149

.body.i149:                                       ; preds = %bb.av, %bb.as
  %eh.lpad-body.i150 = phi { ptr, i32 } [ %i.cw, %bb.av ], [ %i.cr, %bb.as ]
  %i.cx = extractvalue { ptr, i32 } %eh.lpad-body.i150, 0
  call void @__clang_call_terminate(ptr %i.cx) #26
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.at, %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit92
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  invoke void @_ZN4gdcm6StringILc92ELj16ELc32EEC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull @.str.19)
          to label %bb.ax unwind label %bb.cq

bb.ax:                                            ; preds = %bb.aw
  %i.cy = load i8, ptr %13, align 8
  %i.cz = trunc i8 %i.cy to i1
  %i.da = load i8, ptr %14, align 8               ; 2 uses
  %i.db = trunc i8 %i.da to i1                    ; 3 uses
  br i1 %i.cz, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.db, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !47
  br label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit

bb.ba:                                            ; preds = %bb.ay
  %i.dc = load ptr, ptr %i.am, align 8
  %i.dd = load i64, ptr %i.an, align 8
  %i.de = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %i.dc, i64 noundef %i.dd)
          to label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit unwind label %bb.cl ; 0 uses

bb.bb:                                            ; preds = %bb.ax
  %i.df = load ptr, ptr %i.am, align 8
  %i.dg = select i1 %i.db, ptr %i.df, ptr %i.ao
  %i.dh = load i64, ptr %i.an, align 8
  %i.di = lshr i8 %i.da, 1
  %i.dj = zext nneg i8 %i.di to i64
  %i.dk = select i1 %i.db, i64 %i.dh, i64 %i.dj
  %i.dl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %i.dg, i64 noundef %i.dk)
          to label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit unwind label %bb.cl ; 0 uses

_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit: ; preds = %bb.az, %bb.ba, %bb.bb
  %i.dm = load i8, ptr %14, align 8
  %i.dn = trunc i8 %i.dm to i1
  br i1 %i.dn, label %bb.bc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.bc:                                            ; preds = %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit
  %i.do = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.dp = load i64, ptr %14, align 8
  %i.dq = and i64 %i.dp, -2
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dq) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNK4gdcm9AttributeILt4ELt5168ELx8ELi1EE16GetAsDataElementEv(ptr dead_on_unwind nonnull writable sret(%"class.gdcm::DataElement") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.bd unwind label %bb.cn

bb.bd:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.dr = load i16, ptr %15, align 8, !tbaa !42   ; 2 uses
  %i.ds = icmp ugt i16 %i.dr, 7
  %i.dt = icmp eq i16 %i.dr, 4
  %or.cond.i96 = or i1 %i.ds, %i.dt
  br i1 %or.cond.i96, label %bb.be, label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit98

bb.be:                                            ; preds = %bb.bd
  %i.du = load i32, ptr %15, align 8, !tbaa !42
  switch i32 %i.du, label %bb.bf [
    i32 -535953410, label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit98
    i32 -522321922, label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit98
    i32 -536805378, label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit98
  ]

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN4gdcm7DataSet17InsertDataElementERKNS_11DataElementE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit98 unwind label %bb.co

_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit98: ; preds = %bb.be, %bb.be, %bb.be, %bb.bd, %bb.bf
  %i.dv = load ptr, ptr %i.ap, align 8, !tbaa !65 ; 4 uses
  %.not.i.i154 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i154, label %bb.bn, label %bb.bg

bb.bg:                                            ; preds = %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit98
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !56 ; 2 uses
  %i.dy = icmp sgt i64 %i.dx, 0
  br i1 %i.dy, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dz = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.dz, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr nonnull %i.dz, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
          to label %.noexc.i157 unwind label %bb.bm

.noexc.i157:                                      ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.dz) #22
  br label %.body.i155

bb.bk:                                            ; preds = %bb.bg
  %i.eb = add nsw i64 %i.dx, -1                   ; 2 uses
  store i64 %i.eb, ptr %i.dw, align 8, !tbaa !56
  %.not.i.i.i158 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i158, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.ec = load ptr, ptr %i.dv, align 8, !tbaa !58
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #22, !inline_history !4
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i155

.body.i155:                                       ; preds = %bb.bm, %bb.bj
  %eh.lpad-body.i156 = phi { ptr, i32 } [ %i.ef, %bb.bm ], [ %i.ea, %bb.bj ]
  %i.eg = extractvalue { ptr, i32 } %eh.lpad-body.i156, 0
  call void @__clang_call_terminate(ptr %i.eg) #26
  unreachable

bb.bn:                                            ; preds = %bb.bl, %bb.bk, %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit98
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0190.0324, i64 32
  %i.ei = load i8, ptr %i.eh, align 8
  %i.ej = trunc i8 %i.ei to i1
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0190.0324, i64 48
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0190.0324, i64 33
  %i.en = select i1 %i.ej, ptr %i.el, ptr %i.em   ; 5 uses
  %.not = icmp eq ptr %i.en, null
  br i1 %.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !42
  %.not62 = icmp eq i8 %i.eo, 0
  br i1 %.not62, label %bb.bp, label %bb.cs

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.lcssa415 = phi ptr [ null, %bb.bn ], [ %i.en, %bb.bo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store i16 16, ptr %16, align 4, !tbaa !42, !alias.scope !195
  %i.ep = getelementptr inbounds nuw i8, ptr %16, i64 2
  store i16 32, ptr %i.ep, align 2, !tbaa !42, !alias.scope !195
  %i.eq = invoke noundef ptr @_ZNK4gdcm7Scanner25GetFilenameFromTagToValueERKNS_3TagEPKc(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %16, ptr noundef %.lcssa415)
          to label %bb.bq unwind label %bb.cr     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.er = load i8, ptr %13, align 8
  %i.es = trunc i8 %i.er to i1
  br i1 %i.es, label %bb.br, label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit

bb.br:                                            ; preds = %bb.bq
  %i.et = load ptr, ptr %i.ba, align 8, !tbaa !42
  %i.eu = load i64, ptr %13, align 8
  %i.ev = and i64 %i.eu, -2
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ev) #25
  br label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit

_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit: ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ew = load ptr, ptr %i.ai, align 8, !tbaa !45
  call void @_ZNSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef %i.ew) #22
  %i.ex = load ptr, ptr %i.bb, align 8, !tbaa !65 ; 4 uses
  %.not.i.i160 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i160, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit165, label %bb.bs

bb.bs:                                            ; preds = %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !56 ; 2 uses
  %i.fa = icmp sgt i64 %i.ez, 0
  br i1 %i.fa, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fb = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  invoke void @__cxa_throw(ptr nonnull %i.fb, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
          to label %.noexc.i163 unwind label %bb.by

.noexc.i163:                                      ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.fb) #22
  br label %.body.i161

bb.bw:                                            ; preds = %bb.bs
  %i.fd = add nsw i64 %i.ez, -1                   ; 2 uses
  store i64 %i.fd, ptr %i.ey, align 8, !tbaa !56
  %.not.i.i.i164 = icmp eq i64 %i.fd, 0
  br i1 %.not.i.i.i164, label %bb.bx, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit165

bb.bx:                                            ; preds = %bb.bw
  %i.fe = load ptr, ptr %i.ex, align 8, !tbaa !58
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #22, !inline_history !4
  br label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit165

bb.by:                                            ; preds = %bb.bu
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i161

.body.i161:                                       ; preds = %bb.by, %bb.bv
  %eh.lpad-body.i162 = phi { ptr, i32 } [ %i.fh, %bb.by ], [ %i.fc, %bb.bv ]
  %i.fi = extractvalue { ptr, i32 } %eh.lpad-body.i162, 0
  call void @__clang_call_terminate(ptr %i.fi) #26
  unreachable

_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit165:   ; preds = %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit

bb.bz:                                            ; preds = %bb.e
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ga

bb.ca:                                            ; preds = %bb.o
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.cb:                                            ; preds = %bb.q
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.cc:                                            ; preds = %bb.r
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.u
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #22
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn = phi { ptr, i32 } [ %i.fn, %bb.cd ], [ %i.fm, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.fp

bb.cf:                                            ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ae
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #22
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn56 = phi { ptr, i32 } [ %i.fp, %bb.cg ], [ %i.fo, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.fo

bb.ci:                                            ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit147
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ao
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #22
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn58 = phi { ptr, i32 } [ %i.fr, %bb.cj ], [ %i.fq, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.fn

bb.cl:                                            ; preds = %bb.bb, %bb.ba
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load i8, ptr %14, align 8
  %i.fu = trunc i8 %i.ft to i1
  br i1 %i.fu, label %bb.cm, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit99

bb.cm:                                            ; preds = %bb.cl
  %i.fv = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.fw = load i64, ptr %14, align 8
  %i.fx = and i64 %i.fw, -2
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fx) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit99

bb.cn:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.bf
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #22
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn60 = phi { ptr, i32 } [ %i.fz, %bb.co ], [ %i.fy, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit99

bb.cq:                                            ; preds = %bb.aw, %bb.cs
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit99

bb.cr:                                            ; preds = %bb.bp
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit99

bb.cs:                                            ; preds = %bb.bo
  invoke void @_ZN4gdcm6StringILc92ELj64ELc32EEC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull %i.en)
          to label %bb.ct unwind label %bb.cq

bb.ct:                                            ; preds = %bb.cs
  %i.gc = load i8, ptr %2, align 8
  %i.gd = trunc i8 %i.gc to i1
  %i.ge = load i8, ptr %17, align 8               ; 2 uses
  %i.gf = trunc i8 %i.ge to i1                    ; 3 uses
  br i1 %i.gd, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.gf, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !47
  br label %_ZN4gdcm9AttributeILt16ELt32ELx1024ELi1EE8SetValueENS_6StringILc92ELj64ELc32EEE.exit
end_hunk_0
begin_hunk_1_@_ZN4gdcm17DICOMDIRGenerator23AddStudyDirectoryRecordEv:bb.a
  invoke void @_ZN4gdcm7DataSet17InsertDataElementERKNS_11DataElementE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit160 unwind label %bb.cj

_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit160: ; preds = %bb.an, %bb.an, %bb.an, %bb.am, %bb.ao
  %i.dg = load ptr, ptr %i.al, align 8, !tbaa !65 ; 4 uses
  %.not.i.i340 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i340, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit160
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !56 ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 0
  br i1 %i.dj, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dk = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.dk, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
          to label %.noexc.i343 unwind label %bb.av

.noexc.i343:                                      ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.dk) #22
  br label %.body.i341

bb.at:                                            ; preds = %bb.ap
  %i.dm = add nsw i64 %i.di, -1                   ; 2 uses
  store i64 %i.dm, ptr %i.dh, align 8, !tbaa !56
  %.not.i.i.i344 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i344, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.dn = load ptr, ptr %i.dg, align 8, !tbaa !58
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dg) #22, !inline_history !4
  br label %bb.aw

bb.av:                                            ; preds = %bb.ar
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i341

.body.i341:                                       ; preds = %bb.av, %bb.as
  %eh.lpad-body.i342 = phi { ptr, i32 } [ %i.dq, %bb.av ], [ %i.dl, %bb.as ]
  %i.dr = extractvalue { ptr, i32 } %eh.lpad-body.i342, 0
  call void @__clang_call_terminate(ptr %i.dr) #26
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.at, %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit160
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  invoke void @_ZN4gdcm6StringILc92ELj16ELc32EEC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull @.str.23)
          to label %bb.ax unwind label %bb.cq

bb.ax:                                            ; preds = %bb.aw
  %i.ds = load i8, ptr %13, align 8
  %i.dt = trunc i8 %i.ds to i1
  %i.du = load i8, ptr %14, align 8               ; 2 uses
  %i.dv = trunc i8 %i.du to i1                    ; 3 uses
  br i1 %i.dt, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.dv, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !47
  br label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit

bb.ba:                                            ; preds = %bb.ay
  %i.dw = load ptr, ptr %i.am, align 8
  %i.dx = load i64, ptr %i.an, align 8
  %i.dy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %i.dw, i64 noundef %i.dx)
          to label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit unwind label %bb.cl ; 0 uses

bb.bb:                                            ; preds = %bb.ax
  %i.dz = load ptr, ptr %i.am, align 8
  %i.ea = select i1 %i.dv, ptr %i.dz, ptr %i.ao
  %i.eb = load i64, ptr %i.an, align 8
  %i.ec = lshr i8 %i.du, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = select i1 %i.dv, i64 %i.eb, i64 %i.ed
  %i.ef = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %i.ea, i64 noundef %i.ee)
          to label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit unwind label %bb.cl ; 0 uses

_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit: ; preds = %bb.az, %bb.ba, %bb.bb
  %i.eg = load i8, ptr %14, align 8
  %i.eh = trunc i8 %i.eg to i1
  br i1 %i.eh, label %bb.bc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.bc:                                            ; preds = %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit
  %i.ei = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.ej = load i64, ptr %14, align 8
  %i.ek = and i64 %i.ej, -2
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.ek) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNK4gdcm9AttributeILt4ELt5168ELx8ELi1EE16GetAsDataElementEv(ptr dead_on_unwind nonnull writable sret(%"class.gdcm::DataElement") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.bd unwind label %bb.cn

bb.bd:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.el = load i16, ptr %15, align 8, !tbaa !42   ; 2 uses
  %i.em = icmp ugt i16 %i.el, 7
  %i.en = icmp eq i16 %i.el, 4
  %or.cond.i164 = or i1 %i.em, %i.en
  br i1 %or.cond.i164, label %bb.be, label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit166

bb.be:                                            ; preds = %bb.bd
  %i.eo = load i32, ptr %15, align 8, !tbaa !42
  switch i32 %i.eo, label %bb.bf [
    i32 -535953410, label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit166
    i32 -522321922, label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit166
    i32 -536805378, label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit166
  ]

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN4gdcm7DataSet17InsertDataElementERKNS_11DataElementE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit166 unwind label %bb.co

_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit166: ; preds = %bb.be, %bb.be, %bb.be, %bb.bd, %bb.bf
  %i.ep = load ptr, ptr %i.ap, align 8, !tbaa !65 ; 4 uses
  %.not.i.i346 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i346, label %bb.bn, label %bb.bg

bb.bg:                                            ; preds = %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit166
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !56 ; 2 uses
  %i.es = icmp sgt i64 %i.er, 0
  br i1 %i.es, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.et = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.et, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
          to label %.noexc.i349 unwind label %bb.bm

.noexc.i349:                                      ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.et) #22
  br label %.body.i347

bb.bk:                                            ; preds = %bb.bg
  %i.ev = add nsw i64 %i.er, -1                   ; 2 uses
  store i64 %i.ev, ptr %i.eq, align 8, !tbaa !56
  %.not.i.i.i350 = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i.i350, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.ew = load ptr, ptr %i.ep, align 8, !tbaa !58
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #22, !inline_history !4
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i347

.body.i347:                                       ; preds = %bb.bm, %bb.bj
  %eh.lpad-body.i348 = phi { ptr, i32 } [ %i.ez, %bb.bm ], [ %i.eu, %bb.bj ]
  %i.fa = extractvalue { ptr, i32 } %eh.lpad-body.i348, 0
  call void @__clang_call_terminate(ptr %i.fa) #26
  unreachable

bb.bn:                                            ; preds = %bb.bl, %bb.bk, %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit166
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0434.0696, i64 32
  %i.fc = load i8, ptr %i.fb, align 8
  %i.fd = trunc i8 %i.fc to i1
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0434.0696, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0434.0696, i64 33
  %i.fh = select i1 %i.fd, ptr %i.ff, ptr %i.fg   ; 5 uses
  %.not = icmp eq ptr %i.fh, null
  br i1 %.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !42
  %.not98 = icmp eq i8 %i.fi, 0
  br i1 %.not98, label %bb.bp, label %bb.cs

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.lcssa915 = phi ptr [ null, %bb.bn ], [ %i.fh, %bb.bo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store i16 32, ptr %16, align 4, !tbaa !42, !alias.scope !323
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 2
  store i16 13, ptr %i.fj, align 2, !tbaa !42, !alias.scope !323
  %i.fk = invoke noundef ptr @_ZNK4gdcm7Scanner25GetFilenameFromTagToValueERKNS_3TagEPKc(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %16, ptr noundef %.lcssa915)
          to label %bb.bq unwind label %bb.cr     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.fl = load i8, ptr %13, align 8
  %i.fm = trunc i8 %i.fl to i1
  br i1 %i.fm, label %bb.br, label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit

bb.br:                                            ; preds = %bb.bq
  %i.fn = load ptr, ptr %i.bu, align 8, !tbaa !42
  %i.fo = load i64, ptr %13, align 8
  %i.fp = and i64 %i.fo, -2
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fp) #25
  br label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit

_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit: ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.fq = load ptr, ptr %i.ai, align 8, !tbaa !45
  call void @_ZNSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef %i.fq) #22
  %i.fr = load ptr, ptr %i.bv, align 8, !tbaa !65 ; 4 uses
  %.not.i.i352 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i352, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit357, label %bb.bs

bb.bs:                                            ; preds = %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !56 ; 2 uses
  %i.fu = icmp sgt i64 %i.ft, 0
  br i1 %i.fu, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fv = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fv, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  invoke void @__cxa_throw(ptr nonnull %i.fv, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
          to label %.noexc.i355 unwind label %bb.by

.noexc.i355:                                      ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.fv) #22
  br label %.body.i353

bb.bw:                                            ; preds = %bb.bs
  %i.fx = add nsw i64 %i.ft, -1                   ; 2 uses
  store i64 %i.fx, ptr %i.fs, align 8, !tbaa !56
  %.not.i.i.i356 = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i.i356, label %bb.bx, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit357

bb.bx:                                            ; preds = %bb.bw
  %i.fy = load ptr, ptr %i.fr, align 8, !tbaa !58
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fr) #22, !inline_history !4
  br label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit357

bb.by:                                            ; preds = %bb.bu
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i353

.body.i353:                                       ; preds = %bb.by, %bb.bv
  %eh.lpad-body.i354 = phi { ptr, i32 } [ %i.gb, %bb.by ], [ %i.fw, %bb.bv ]
  %i.gc = extractvalue { ptr, i32 } %eh.lpad-body.i354, 0
  call void @__clang_call_terminate(ptr %i.gc) #26
  unreachable

_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit357:   ; preds = %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit

bb.bz:                                            ; preds = %bb.e
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ma

bb.ca:                                            ; preds = %bb.o
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.lz

bb.cb:                                            ; preds = %bb.q
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.lq

bb.cc:                                            ; preds = %bb.r
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.u
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #22
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn = phi { ptr, i32 } [ %i.gh, %bb.cd ], [ %i.gg, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.lp

bb.cf:                                            ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ae
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #22
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn92 = phi { ptr, i32 } [ %i.gj, %bb.cg ], [ %i.gi, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.lo

bb.ci:                                            ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit339
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ao
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #22
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn94 = phi { ptr, i32 } [ %i.gl, %bb.cj ], [ %i.gk, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ln

bb.cl:                                            ; preds = %bb.bb, %bb.ba
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gn = load i8, ptr %14, align 8
  %i.go = trunc i8 %i.gn to i1
  br i1 %i.go, label %bb.cm, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit167

bb.cm:                                            ; preds = %bb.cl
  %i.gp = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.gq = load i64, ptr %14, align 8
  %i.gr = and i64 %i.gq, -2
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gr) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit167

bb.cn:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.bf
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #22
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn96 = phi { ptr, i32 } [ %i.gt, %bb.co ], [ %i.gs, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit167

bb.cq:                                            ; preds = %bb.aw, %bb.cs
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit167

bb.cr:                                            ; preds = %bb.bp
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit167

bb.cs:                                            ; preds = %bb.bo
  invoke void @_ZN4gdcm6StringILc92ELj64ELc0EEC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull %i.fh)
          to label %bb.ct unwind label %bb.cq

bb.ct:                                            ; preds = %bb.cs
  %i.gw = load i8, ptr %2, align 8
  %i.gx = trunc i8 %i.gw to i1
  %i.gy = load i8, ptr %17, align 8               ; 2 uses
  %i.gz = trunc i8 %i.gy to i1                    ; 3 uses
  br i1 %i.gx, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.gz, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !47
  br label %_ZN4gdcm9AttributeILt32ELt13ELx4194304ELi1EE8SetValueENS_6StringILc92ELj64ELc0EEE.exit
end_hunk_1
begin_hunk_2_@_ZN4gdcm17DICOMDIRGenerator24AddSeriesDirectoryRecordEv:bb.a
  invoke void @_ZN4gdcm7DataSet17InsertDataElementERKNS_11DataElementE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit104 unwind label %bb.cj

_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit104: ; preds = %bb.an, %bb.an, %bb.an, %bb.am, %bb.ao
  %i.cn = load ptr, ptr %i.al, align 8, !tbaa !65 ; 4 uses
  %.not.i.i185 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i185, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit104
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !56 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  br i1 %i.cq, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cr = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
          to label %.noexc.i188 unwind label %bb.av

.noexc.i188:                                      ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.cr) #22
  br label %.body.i186

bb.at:                                            ; preds = %bb.ap
  %i.ct = add nsw i64 %i.cp, -1                   ; 2 uses
  store i64 %i.ct, ptr %i.co, align 8, !tbaa !56
  %.not.i.i.i189 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i189, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #22, !inline_history !4
  br label %bb.aw

bb.av:                                            ; preds = %bb.ar
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i186

.body.i186:                                       ; preds = %bb.av, %bb.as
  %eh.lpad-body.i187 = phi { ptr, i32 } [ %i.cx, %bb.av ], [ %i.cs, %bb.as ]
  %i.cy = extractvalue { ptr, i32 } %eh.lpad-body.i187, 0
  call void @__clang_call_terminate(ptr %i.cy) #26
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.at, %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit104
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  invoke void @_ZN4gdcm6StringILc92ELj16ELc32EEC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull @.str.7)
          to label %bb.ax unwind label %bb.cq

bb.ax:                                            ; preds = %bb.aw
  %i.cz = load i8, ptr %13, align 8
  %i.da = trunc i8 %i.cz to i1
  %i.db = load i8, ptr %14, align 8               ; 2 uses
  %i.dc = trunc i8 %i.db to i1                    ; 3 uses
  br i1 %i.da, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.dc, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !47
  br label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit

bb.ba:                                            ; preds = %bb.ay
  %i.dd = load ptr, ptr %i.am, align 8
  %i.de = load i64, ptr %i.an, align 8
  %i.df = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %i.dd, i64 noundef %i.de)
          to label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit unwind label %bb.cl ; 0 uses

bb.bb:                                            ; preds = %bb.ax
  %i.dg = load ptr, ptr %i.am, align 8
  %i.dh = select i1 %i.dc, ptr %i.dg, ptr %i.ao
  %i.di = load i64, ptr %i.an, align 8
  %i.dj = lshr i8 %i.db, 1
  %i.dk = zext nneg i8 %i.dj to i64
  %i.dl = select i1 %i.dc, i64 %i.di, i64 %i.dk
  %i.dm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef %i.dh, i64 noundef %i.dl)
          to label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit unwind label %bb.cl ; 0 uses

_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit: ; preds = %bb.az, %bb.ba, %bb.bb
  %i.dn = load i8, ptr %14, align 8
  %i.do = trunc i8 %i.dn to i1
  br i1 %i.do, label %bb.bc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.bc:                                            ; preds = %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit
  %i.dp = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.dq = load i64, ptr %14, align 8
  %i.dr = and i64 %i.dq, -2
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dr) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EE8SetValueENS_6StringILc92ELj16ELc32EEE.exit, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNK4gdcm9AttributeILt4ELt5168ELx8ELi1EE16GetAsDataElementEv(ptr dead_on_unwind nonnull writable sret(%"class.gdcm::DataElement") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.bd unwind label %bb.cn

bb.bd:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.ds = load i16, ptr %15, align 8, !tbaa !42   ; 2 uses
  %i.dt = icmp ugt i16 %i.ds, 7
  %i.du = icmp eq i16 %i.ds, 4
  %or.cond.i108 = or i1 %i.dt, %i.du
  br i1 %or.cond.i108, label %bb.be, label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit110

bb.be:                                            ; preds = %bb.bd
  %i.dv = load i32, ptr %15, align 8, !tbaa !42
  switch i32 %i.dv, label %bb.bf [
    i32 -535953410, label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit110
    i32 -522321922, label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit110
    i32 -536805378, label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit110
  ]

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN4gdcm7DataSet17InsertDataElementERKNS_11DataElementE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit110 unwind label %bb.co

_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit110: ; preds = %bb.be, %bb.be, %bb.be, %bb.bd, %bb.bf
  %i.dw = load ptr, ptr %i.ap, align 8, !tbaa !65 ; 4 uses
  %.not.i.i191 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i191, label %bb.bn, label %bb.bg

bb.bg:                                            ; preds = %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit110
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !56 ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 0
  br i1 %i.dz, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ea = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr nonnull %i.ea, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
          to label %.noexc.i194 unwind label %bb.bm

.noexc.i194:                                      ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.ea) #22
  br label %.body.i192

bb.bk:                                            ; preds = %bb.bg
  %i.ec = add nsw i64 %i.dy, -1                   ; 2 uses
  store i64 %i.ec, ptr %i.dx, align 8, !tbaa !56
  %.not.i.i.i195 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i195, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !58
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #22, !inline_history !4
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i192

.body.i192:                                       ; preds = %bb.bm, %bb.bj
  %eh.lpad-body.i193 = phi { ptr, i32 } [ %i.eg, %bb.bm ], [ %i.eb, %bb.bj ]
  %i.eh = extractvalue { ptr, i32 } %eh.lpad-body.i193, 0
  call void @__clang_call_terminate(ptr %i.eh) #26
  unreachable

bb.bn:                                            ; preds = %bb.bl, %bb.bk, %_ZN4gdcm7DataSet6InsertERKNS_11DataElementE.exit110
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0240.0402, i64 32
  %i.ej = load i8, ptr %i.ei, align 8
  %i.ek = trunc i8 %i.ej to i1
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0240.0402, i64 48
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0240.0402, i64 33
  %i.eo = select i1 %i.ek, ptr %i.em, ptr %i.en   ; 5 uses
  %.not = icmp eq ptr %i.eo, null
  br i1 %.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !42
  %.not69 = icmp eq i8 %i.ep, 0
  br i1 %.not69, label %bb.bp, label %bb.cs

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.lcssa522 = phi ptr [ null, %bb.bn ], [ %i.eo, %bb.bo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store i16 32, ptr %16, align 4, !tbaa !42, !alias.scope !503
  %i.eq = getelementptr inbounds nuw i8, ptr %16, i64 2
  store i16 14, ptr %i.eq, align 2, !tbaa !42, !alias.scope !503
  %i.er = invoke noundef ptr @_ZNK4gdcm7Scanner25GetFilenameFromTagToValueERKNS_3TagEPKc(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %16, ptr noundef %.lcssa522)
          to label %bb.bq unwind label %bb.cr     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.es = load i8, ptr %13, align 8
  %i.et = trunc i8 %i.es to i1
  br i1 %i.et, label %bb.br, label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit

bb.br:                                            ; preds = %bb.bq
  %i.eu = load ptr, ptr %i.bb, align 8, !tbaa !42
  %i.ev = load i64, ptr %13, align 8
  %i.ew = and i64 %i.ev, -2
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ew) #25
  br label %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit

_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit: ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ex = load ptr, ptr %i.ai, align 8, !tbaa !45
  call void @_ZNSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef %i.ex) #22
  %i.ey = load ptr, ptr %i.bc, align 8, !tbaa !65 ; 4 uses
  %.not.i.i197 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i197, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit202, label %bb.bs

bb.bs:                                            ; preds = %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !56 ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 0
  br i1 %i.fb, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fc = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fc, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 77, ptr noundef nonnull @.str.2)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  invoke void @__cxa_throw(ptr nonnull %i.fc, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #23
          to label %.noexc.i200 unwind label %bb.by

.noexc.i200:                                      ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.fc) #22
  br label %.body.i198

bb.bw:                                            ; preds = %bb.bs
  %i.fe = add nsw i64 %i.fa, -1                   ; 2 uses
  store i64 %i.fe, ptr %i.ez, align 8, !tbaa !56
  %.not.i.i.i201 = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i.i201, label %bb.bx, label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit202

bb.bx:                                            ; preds = %bb.bw
  %i.ff = load ptr, ptr %i.ey, align 8, !tbaa !58
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #22, !inline_history !4
  br label %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit202

bb.by:                                            ; preds = %bb.bu
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i198

.body.i198:                                       ; preds = %bb.by, %bb.bv
  %eh.lpad-body.i199 = phi { ptr, i32 } [ %i.fi, %bb.by ], [ %i.fd, %bb.bv ]
  %i.fj = extractvalue { ptr, i32 } %eh.lpad-body.i199, 0
  call void @__clang_call_terminate(ptr %i.fj) #26
  unreachable

_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit202:   ; preds = %_ZN4gdcm9AttributeILt4ELt5168ELx8ELi1EED2Ev.exit, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit

bb.bz:                                            ; preds = %bb.e
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.he

bb.ca:                                            ; preds = %bb.o
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.cb:                                            ; preds = %bb.q
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.cc:                                            ; preds = %bb.r
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.u
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #22
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn = phi { ptr, i32 } [ %i.fo, %bb.cd ], [ %i.fn, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.gt

bb.cf:                                            ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ae
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #22
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn63 = phi { ptr, i32 } [ %i.fq, %bb.cg ], [ %i.fp, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.gs

bb.ci:                                            ; preds = %_ZN4gdcm12SmartPointerINS_5ValueEED2Ev.exit184
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ao
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #22
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn65 = phi { ptr, i32 } [ %i.fs, %bb.cj ], [ %i.fr, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.gr

bb.cl:                                            ; preds = %bb.bb, %bb.ba
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load i8, ptr %14, align 8
  %i.fv = trunc i8 %i.fu to i1
  br i1 %i.fv, label %bb.cm, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit111

bb.cm:                                            ; preds = %bb.cl
  %i.fw = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.fx = load i64, ptr %14, align 8
  %i.fy = and i64 %i.fx, -2
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fy) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit111

bb.cn:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.bf
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #22
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn67 = phi { ptr, i32 } [ %i.ga, %bb.co ], [ %i.fz, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit111

bb.cq:                                            ; preds = %bb.aw, %bb.cs
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit111

bb.cr:                                            ; preds = %bb.bp
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit111

bb.cs:                                            ; preds = %bb.bo
  invoke void @_ZN4gdcm6StringILc92ELj64ELc0EEC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull %i.eo)
          to label %bb.ct unwind label %bb.cq

bb.ct:                                            ; preds = %bb.cs
  %i.gd = load i8, ptr %2, align 8
  %i.ge = trunc i8 %i.gd to i1
  %i.gf = load i8, ptr %17, align 8               ; 2 uses
  %i.gg = trunc i8 %i.gf to i1                    ; 3 uses
  br i1 %i.ge, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.gg, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !47
  br label %_ZN4gdcm9AttributeILt32ELt14ELx4194304ELi1EE8SetValueENS_6StringILc92ELj64ELc0EEE.exit
end_hunk_2
