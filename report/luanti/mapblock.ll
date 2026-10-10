Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapblock?download=true
inline.NumInlined: 1707
inline.NumDeleted: 782
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN8MapBlock17deSerialize_pre22ERSihb:bb.a
  %i.cj = icmp eq ptr %i.ci, %i.bu
  br i1 %i.cj, label %.body, label %.body.sink.split

bb.y:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.x

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.y, %bb.w
  %i.cl = load i64, ptr %i.bv, align 8, !tbaa !137
  %.not213 = icmp eq i64 %i.cl, 4096
  br i1 %.not213, label %.preheader574, label %bb.z

.preheader574:                                    ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cm = load ptr, ptr %11, align 8, !tbaa !94   ; 11 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %ident.check.not = icmp ne i32 %i.p, 1
  %i.co = sub i64 %i.cn, %storemerge.i732
  %diff.check = icmp ugt i64 %i.co, -32
  %or.cond = select i1 %ident.check.not, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader574, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %.preheader574 ] ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <16 x i8>, ptr %i.cp, align 1, !tbaa !95
  %wide.load733 = load <16 x i8>, ptr %i.cq, align 1, !tbaa !95
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <16 x i8> %wide.load, ptr %i.cr, align 1, !tbaa !95
  store <16 x i8> %wide.load733, ptr %i.cs, align 1, !tbaa !95
  %index.next = or disjoint i64 %index, 32        ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index.next ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !95
  %wide.load733.1 = load <16 x i8>, ptr %i.cu, align 1, !tbaa !95
  %i.cv = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <16 x i8> %wide.load.1, ptr %i.cv, align 1, !tbaa !95
  store <16 x i8> %wide.load733.1, ptr %i.cw, align 1, !tbaa !95
  %index.next.1 = or disjoint i64 %index, 64      ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index.next.1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load.2 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !95
  %wide.load733.2 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !95
  %i.cz = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next.1 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <16 x i8> %wide.load.2, ptr %i.cz, align 1, !tbaa !95
  store <16 x i8> %wide.load733.2, ptr %i.da, align 1, !tbaa !95
  %index.next.2 = or disjoint i64 %index, 96      ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 %index.next.2 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load.3 = load <16 x i8>, ptr %i.db, align 1, !tbaa !95
  %wide.load733.3 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !95
  %i.dd = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next.2 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <16 x i8> %wide.load.3, ptr %i.dd, align 1, !tbaa !95
  store <16 x i8> %wide.load733.3, ptr %i.de, align 1, !tbaa !95
  %index.next.3 = add nuw nsw i64 %index, 128     ; 2 uses
  %i.df = icmp eq i64 %index.next.3, 4096
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288, label %vector.body, !llvm.loop !276

bb.z:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dg = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8MapBlock17deSerialize_pre22ERSihb, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.32)
          to label %bb.ab unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284.thread

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %12)
  invoke void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #31
          to label %bb.gd unwind label %bb.af

bb.ac:                                            ; preds = %bb.s
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ad:                                            ; preds = %bb.t
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ae:                                            ; preds = %bb.u
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread: ; preds = %bb.z
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread516

bb.af:                                            ; preds = %bb.ab
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %12, align 8, !tbaa !94   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %bb.af
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !95
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282
  %i.dr = load ptr, ptr %13, align 8, !tbaa !94   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284.thread: ; preds = %bb.aa
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %13, align 8, !tbaa !94   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread516, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284.thread
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !95
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  %i.ea = load i64, ptr %i.ds, align 8, !tbaa !95
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.eb) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ao

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread516: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread
  %.pn228.pn509 = phi { ptr, i32 } [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.thread ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @__cxa_free_exception(ptr %i.dg) #20
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %vector.body, %scalar.ph
  %i.ec = icmp ne ptr %i.cm, %i.bu
  call void @llvm.assume(i1 %i.ec)
  %i.ed = load i64, ptr %i.bu, align 8, !tbaa !95
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.ee) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ef = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 4 uses
  store ptr %i.ef, ptr %10, align 8, !tbaa !112
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 3 uses
  %i.eh = getelementptr i8, ptr %i.ef, i64 -24    ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds i8, ptr %10, i64 %i.ei
  store ptr %i.eg, ptr %i.ej, align 8, !tbaa !112
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ek, align 8, !tbaa !112
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !94 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !95
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ek, align 8, !tbaa !112
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.er) #20
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.es) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %15, i32 noundef 4)
          to label %bb.ag unwind label %bb.ar

scalar.ph:                                        ; preds = %.preheader574, %scalar.ph
  %indvars.iv607 = phi i64 [ %indvars.iv.next608.3, %scalar.ph ], [ 0, %.preheader574 ] ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv607
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !95
  %i.ev = trunc nuw nsw i64 %indvars.iv607 to i32
  %i.ew = mul i32 %i.p, %i.ev
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.ex
  store i8 %i.eu, ptr %i.ey, align 1, !tbaa !95
  %indvars.iv.next608 = or disjoint i64 %indvars.iv607, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv.next608
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !95
  %i.fb = trunc nuw nsw i64 %indvars.iv.next608 to i32
  %i.fc = mul i32 %i.p, %i.fb
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.fd
  store i8 %i.fa, ptr %i.fe, align 1, !tbaa !95
  %indvars.iv.next608.1 = or disjoint i64 %indvars.iv607, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv.next608.1
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !95
  %i.fh = trunc nuw nsw i64 %indvars.iv.next608.1 to i32
  %i.fi = mul i32 %i.p, %i.fh
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.fj
  store i8 %i.fg, ptr %i.fk, align 1, !tbaa !95
  %indvars.iv.next608.2 = or disjoint i64 %indvars.iv607, 3 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv.next608.2
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !95
  %i.fn = trunc nuw nsw i64 %indvars.iv.next608.2 to i32
  %i.fo = mul i32 %i.p, %i.fn
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.fp
  store i8 %i.fm, ptr %i.fq, align 1, !tbaa !95
  %indvars.iv.next608.3 = add nuw nsw i64 %indvars.iv607, 4 ; 2 uses
  %exitcond610.not.3 = icmp eq i64 %indvars.iv.next608.3, 4096
  br i1 %exitcond610.not.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288, label %scalar.ph, !llvm.loop !277

bb.ag:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  invoke void @_Z10decompressRSiRSoh(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %15, i8 noundef zeroext %2)
          to label %bb.ah unwind label %bb.as

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.fr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.fr, ptr %16, align 8, !tbaa !135, !alias.scope !303
  %i.fs = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 0, ptr %i.fs, align 8, !tbaa !137, !alias.scope !303
  store i8 0, ptr %i.fr, align 8, !tbaa !95, !alias.scope !303
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !178, !noalias !303 ; 3 uses
  %.not.i.not.i.i291 = icmp eq ptr %i.fu, null
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !303 ; 2 uses
  %i.fx = icmp ugt ptr %i.fu, %i.fw
  %.08.i.i.i292 = select i1 %i.fx, ptr %i.fu, ptr %i.fw ; 2 uses
  %.not5.i.i293 = icmp eq ptr %.08.i.i.i292, null
  %.not.i.i294 = select i1 %.not.i.not.i.i291, i1 true, i1 %.not5.i.i293
  br i1 %.not.i.i294, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !179, !noalias !303 ; 2 uses
  %i.ga = ptrtoint ptr %.08.i.i.i292 to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef %i.fz, i64 noundef %i.gc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit300 unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gf = load ptr, ptr %16, align 8, !tbaa !94, !alias.scope !303 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fr
  br i1 %i.gg, label %.body298, label %.body298.sink.split

bb.ak:                                            ; preds = %bb.ah
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.gh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit300 unwind label %bb.aj

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit300: ; preds = %bb.ak, %bb.ai
  %i.gi = load i64, ptr %i.fs, align 8, !tbaa !137
  %.not214 = icmp eq i64 %i.gi, 4096
  br i1 %.not214, label %.preheader573, label %bb.al

.preheader573:                                    ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit300
  %i.gj = load ptr, ptr %16, align 8, !tbaa !94   ; 11 uses
  %i.gk = ptrtoaddr ptr %i.gj to i64
  %ident.check735.not = icmp ne i32 %i.p, 1
  %i.gl = sub i64 %storemerge.i732, %i.gk
  %diff.check737 = icmp ult i64 %i.gl, 31
  %or.cond760 = select i1 %ident.check735.not, i1 true, i1 %diff.check737
  br i1 %or.cond760, label %scalar.ph738, label %vector.body740

vector.body740:                                   ; preds = %.preheader573, %vector.body740
  %index741 = phi i64 [ %index.next744.3, %vector.body740 ], [ 0, %.preheader573 ] ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 %index741 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load742 = load <16 x i8>, ptr %i.gm, align 1, !tbaa !95
  %wide.load743 = load <16 x i8>, ptr %i.gn, align 1, !tbaa !95
  %i.go = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index741 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 17
  store <16 x i8> %wide.load742, ptr %i.gp, align 1, !tbaa !95
  store <16 x i8> %wide.load743, ptr %i.gq, align 1, !tbaa !95
  %index.next744 = or disjoint i64 %index741, 32  ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 %index.next744 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load742.1 = load <16 x i8>, ptr %i.gr, align 1, !tbaa !95
  %wide.load743.1 = load <16 x i8>, ptr %i.gs, align 1, !tbaa !95
  %i.gt = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next744 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 17
  store <16 x i8> %wide.load742.1, ptr %i.gu, align 1, !tbaa !95
  store <16 x i8> %wide.load743.1, ptr %i.gv, align 1, !tbaa !95
  %index.next744.1 = or disjoint i64 %index741, 64 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gj, i64 %index.next744.1 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load742.2 = load <16 x i8>, ptr %i.gw, align 1, !tbaa !95
  %wide.load743.2 = load <16 x i8>, ptr %i.gx, align 1, !tbaa !95
  %i.gy = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next744.1 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 17
  store <16 x i8> %wide.load742.2, ptr %i.gz, align 1, !tbaa !95
  store <16 x i8> %wide.load743.2, ptr %i.ha, align 1, !tbaa !95
  %index.next744.2 = or disjoint i64 %index741, 96 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gj, i64 %index.next744.2 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load742.3 = load <16 x i8>, ptr %i.hb, align 1, !tbaa !95
  %wide.load743.3 = load <16 x i8>, ptr %i.hc, align 1, !tbaa !95
  %i.hd = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next744.2 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 17
  store <16 x i8> %wide.load742.3, ptr %i.he, align 1, !tbaa !95
  store <16 x i8> %wide.load743.3, ptr %i.hf, align 1, !tbaa !95
  %index.next744.3 = add nuw nsw i64 %index741, 128 ; 2 uses
  %i.hg = icmp eq i64 %index.next744.3, 4096
  br i1 %i.hg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310, label %vector.body740, !llvm.loop !282

bb.al:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit300
  %i.hh = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8MapBlock17deSerialize_pre22ERSihb, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.am unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread

bb.am:                                            ; preds = %bb.al
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.32)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread

bb.an:                                            ; preds = %bb.am
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.hh, ptr noundef nonnull align 8 dereferenceable(32) %17)
  invoke void @__cxa_throw(ptr nonnull %i.hh, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #31
          to label %bb.gd unwind label %bb.at

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread516
  %.pn228.pn508 = phi { ptr, i32 } [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %.pn228.pn509, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread516 ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285 ] ; 2 uses
  %i.hi = load ptr, ptr %11, align 8, !tbaa !94   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.bu
  br i1 %i.hj, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ao, %bb.x
  %.sink = phi ptr [ %i.ci, %bb.x ], [ %i.hi, %bb.ao ]
  %.pn228.pn.pn.ph = phi { ptr, i32 } [ %i.ch, %bb.x ], [ %.pn228.pn508, %bb.ao ]
  %i.hk = load i64, ptr %i.bu, align 8, !tbaa !95
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hl) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ao, %bb.x
  %.pn228.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.x ], [ %.pn228.pn508, %bb.ao ], [ %.pn228.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ap

bb.ap:                                            ; preds = %.body, %bb.ae
  %.pn228.pn.pn.pn = phi { ptr, i32 } [ %.pn228.pn.pn, %.body ], [ %i.dj, %bb.ae ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10) #20
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ad
  %.pn228.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn228.pn.pn.pn, %bb.ap ], [ %i.di, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.bn

bb.ar:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.as:                                            ; preds = %bb.ag
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread: ; preds = %bb.al
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread529

bb.at:                                            ; preds = %bb.an
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = load ptr, ptr %17, align 8, !tbaa !94   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304: ; preds = %bb.at
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !95
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304
  %i.hv = load ptr, ptr %18, align 8, !tbaa !94   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread: ; preds = %bb.am
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hz = load ptr, ptr %18, align 8, !tbaa !94   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread529, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !95
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread529

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
  %i.ie = load i64, ptr %i.hw, align 8, !tbaa !95
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.if) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.bd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread529: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread
  %.pn222.pn522 = phi { ptr, i32 } [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread ], [ %i.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307.thread ], [ %i.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @__cxa_free_exception(ptr %i.hh) #20
  br label %bb.bd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %vector.body740, %scalar.ph738
  %i.ig = icmp ne ptr %i.gj, %i.fr
  call void @llvm.assume(i1 %i.ig)
  %i.ih = load i64, ptr %i.fr, align 8, !tbaa !95
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.ii) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  store ptr %i.ef, ptr %15, align 8, !tbaa !112
  %i.ij = load i64, ptr %i.eh, align 8
  %i.ik = getelementptr inbounds i8, ptr %15, i64 %i.ij
  store ptr %i.eg, ptr %i.ik, align 8, !tbaa !112
  %i.il = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.il, align 8, !tbaa !112
  %i.im = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !94 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %15, i64 96 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i313: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !95
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit315

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit315: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i313
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.il, align 8, !tbaa !112
  %i.is = getelementptr inbounds nuw i8, ptr %15, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.is) #20
  %i.it = getelementptr inbounds nuw i8, ptr %15, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.it) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.iu = icmp eq i8 %2, 10
  br i1 %i.iu, label %bb.au, label %bb.bm

scalar.ph738:                                     ; preds = %.preheader573, %scalar.ph738
  %indvars.iv611 = phi i64 [ %indvars.iv.next612.3, %scalar.ph738 ], [ 0, %.preheader573 ] ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv611
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !95
  %i.ix = trunc nuw nsw i64 %indvars.iv611 to i32
  %i.iy = mul i32 %i.p, %i.ix
  %i.iz = or disjoint i32 %i.iy, 1
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.ja
  store i8 %i.iw, ptr %i.jb, align 1, !tbaa !95
  %indvars.iv.next612 = or disjoint i64 %indvars.iv611, 1 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv.next612
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !95
  %i.je = trunc nuw nsw i64 %indvars.iv.next612 to i32
  %i.jf = mul i32 %i.p, %i.je
  %i.jg = add i32 %i.jf, 1
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.jh
  store i8 %i.jd, ptr %i.ji, align 1, !tbaa !95
  %indvars.iv.next612.1 = or disjoint i64 %indvars.iv611, 2 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv.next612.1
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !95
  %i.jl = trunc nuw nsw i64 %indvars.iv.next612.1 to i32
  %i.jm = mul i32 %i.p, %i.jl
  %i.jn = or disjoint i32 %i.jm, 1
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.jo
  store i8 %i.jk, ptr %i.jp, align 1, !tbaa !95
  %indvars.iv.next612.2 = or disjoint i64 %indvars.iv611, 3 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv.next612.2
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !95
  %i.js = trunc nuw nsw i64 %indvars.iv.next612.2 to i32
  %i.jt = mul i32 %i.p, %i.js
  %i.ju = add i32 %i.jt, 1
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.jv
  store i8 %i.jr, ptr %i.jw, align 1, !tbaa !95
  %indvars.iv.next612.3 = add nuw nsw i64 %indvars.iv611, 4 ; 2 uses
  %exitcond614.not.3 = icmp eq i64 %indvars.iv.next612.3, 4096
  br i1 %exitcond614.not.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310, label %scalar.ph738, !llvm.loop !283

bb.au:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit315
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %20, i32 noundef 4)
          to label %bb.av unwind label %bb.bg

bb.av:                                            ; preds = %bb.au
  invoke void @_Z10decompressRSiRSoh(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef zeroext 10)
          to label %bb.aw unwind label %bb.bh

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.jx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.jx, ptr %21, align 8, !tbaa !135, !alias.scope !306
  %i.jy = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 0, ptr %i.jy, align 8, !tbaa !137, !alias.scope !306
  store i8 0, ptr %i.jx, align 8, !tbaa !95, !alias.scope !306
  %i.jz = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !178, !noalias !306 ; 3 uses
  %.not.i.not.i.i316 = icmp eq ptr %i.ka, null
  %i.kb = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !306 ; 2 uses
  %i.kd = icmp ugt ptr %i.ka, %i.kc
  %.08.i.i.i317 = select i1 %i.kd, ptr %i.ka, ptr %i.kc ; 2 uses
  %.not5.i.i318 = icmp eq ptr %.08.i.i.i317, null
  %.not.i.i319 = select i1 %.not.i.not.i.i316, i1 true, i1 %.not5.i.i318
  br i1 %.not.i.i319, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ke = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !179, !noalias !306 ; 2 uses
  %i.kg = ptrtoint ptr %.08.i.i.i317 to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef 0, ptr noundef %i.kf, i64 noundef %i.ki)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit325 unwind label %bb.ay ; 0 uses

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %i.kk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kl = load ptr, ptr %21, align 8, !tbaa !94, !alias.scope !306 ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.jx
  br i1 %i.km, label %.body323, label %.body323.sink.split

bb.az:                                            ; preds = %bb.aw
  %i.kn = getelementptr inbounds nuw i8, ptr %20, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.kn)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit325 unwind label %bb.ay

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit325: ; preds = %bb.az, %bb.ax
  %i.ko = load i64, ptr %i.jy, align 8, !tbaa !137
  %.not215 = icmp eq i64 %i.ko, 4096
  br i1 %.not215, label %.preheader, label %bb.ba

.preheader:                                       ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit325
  %i.kp = load ptr, ptr %21, align 8, !tbaa !94   ; 11 uses
  %ident.check748.not = icmp eq i32 %i.p, 1
  br i1 %ident.check748.not, label %vector.memcheck749, label %scalar.ph751.preheader

scalar.ph751.preheader:                           ; preds = %vector.memcheck749, %.preheader
  br label %scalar.ph751

vector.memcheck749:                               ; preds = %.preheader
  %i.kq = ptrtoaddr ptr %i.kp to i64
  %i.kr = sub i64 %storemerge.i732, %i.kq
  %i.ks = add i64 %i.kr, 1
  %diff.check750 = icmp ult i64 %i.ks, 31
  br i1 %diff.check750, label %scalar.ph751.preheader, label %vector.body753

vector.body753:                                   ; preds = %vector.memcheck749, %vector.body753
  %index754 = phi i64 [ %index.next757.3, %vector.body753 ], [ 0, %vector.memcheck749 ] ; 6 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index754 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %wide.load755 = load <16 x i8>, ptr %i.kt, align 1, !tbaa !95
  %wide.load756 = load <16 x i8>, ptr %i.ku, align 1, !tbaa !95
  %i.kv = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index754 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 18
  store <16 x i8> %wide.load755, ptr %i.kw, align 1, !tbaa !95
  store <16 x i8> %wide.load756, ptr %i.kx, align 1, !tbaa !95
  %index.next757 = or disjoint i64 %index754, 32  ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index.next757 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %wide.load755.1 = load <16 x i8>, ptr %i.ky, align 1, !tbaa !95
  %wide.load756.1 = load <16 x i8>, ptr %i.kz, align 1, !tbaa !95
  %i.la = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next757 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 18
  store <16 x i8> %wide.load755.1, ptr %i.lb, align 1, !tbaa !95
  store <16 x i8> %wide.load756.1, ptr %i.lc, align 1, !tbaa !95
  %index.next757.1 = or disjoint i64 %index754, 64 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index.next757.1 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %wide.load755.2 = load <16 x i8>, ptr %i.ld, align 1, !tbaa !95
  %wide.load756.2 = load <16 x i8>, ptr %i.le, align 1, !tbaa !95
  %i.lf = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next757.1 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 18
  store <16 x i8> %wide.load755.2, ptr %i.lg, align 1, !tbaa !95
  store <16 x i8> %wide.load756.2, ptr %i.lh, align 1, !tbaa !95
  %index.next757.2 = or disjoint i64 %index754, 96 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.kp, i64 %index.next757.2 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load755.3 = load <16 x i8>, ptr %i.li, align 1, !tbaa !95
  %wide.load756.3 = load <16 x i8>, ptr %i.lj, align 1, !tbaa !95
  %i.lk = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %index.next757.2 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 18
  store <16 x i8> %wide.load755.3, ptr %i.ll, align 1, !tbaa !95
  store <16 x i8> %wide.load756.3, ptr %i.lm, align 1, !tbaa !95
  %index.next757.3 = add nuw nsw i64 %index754, 128 ; 2 uses
  %i.ln = icmp eq i64 %index.next757.3, 4096
  br i1 %i.ln, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, label %vector.body753, !llvm.loop !288

bb.ba:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit325
  %i.lo = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8MapBlock17deSerialize_pre22ERSihb, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.bb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.32)
          to label %bb.bc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.lo, ptr noundef nonnull align 8 dereferenceable(32) %22)
  invoke void @__cxa_throw(ptr nonnull %i.lo, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #31
          to label %bb.gd unwind label %bb.bi

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread529
  %.pn222.pn521 = phi { ptr, i32 } [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309 ], [ %.pn222.pn522, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309.thread529 ], [ %i.hp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307 ] ; 2 uses
  %i.lp = load ptr, ptr %16, align 8, !tbaa !94   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.fr
  br i1 %i.lq, label %.body298, label %.body298.sink.split

.body298.sink.split:                              ; preds = %bb.bd, %bb.aj
  %.sink763 = phi ptr [ %i.gf, %bb.aj ], [ %i.lp, %bb.bd ]
  %.pn222.pn.pn.ph = phi { ptr, i32 } [ %i.ge, %bb.aj ], [ %.pn222.pn521, %bb.bd ]
  %i.lr = load i64, ptr %i.fr, align 8, !tbaa !95
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %.sink763, i64 noundef %i.ls) #29
  br label %.body298

.body298:                                         ; preds = %.body298.sink.split, %bb.bd, %bb.aj
  %.pn222.pn.pn = phi { ptr, i32 } [ %i.ge, %bb.aj ], [ %.pn222.pn521, %bb.bd ], [ %.pn222.pn.pn.ph, %.body298.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.be

bb.be:                                            ; preds = %.body298, %bb.as
  %.pn222.pn.pn.pn = phi { ptr, i32 } [ %.pn222.pn.pn, %.body298 ], [ %i.hn, %bb.as ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #20
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ar
  %.pn222.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn222.pn.pn.pn, %bb.be ], [ %i.hm, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.bn

bb.bg:                                            ; preds = %bb.au
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bh:                                            ; preds = %bb.av
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread: ; preds = %bb.ba
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread542

bb.bi:                                            ; preds = %bb.bc
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lx = load ptr, ptr %22, align 8, !tbaa !94   ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.bi
  %i.ma = load i64, ptr %i.ly, align 8, !tbaa !95
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  %i.mc = load ptr, ptr %23, align 8, !tbaa !94   ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.me = icmp eq ptr %i.mc, %i.md
  br i1 %i.me, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread: ; preds = %bb.bb
  %i.mf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mg = load ptr, ptr %23, align 8, !tbaa !94   ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !95
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread542

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %i.ml = load i64, ptr %i.md, align 8, !tbaa !95
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread542: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread
  %.pn216.pn535 = phi { ptr, i32 } [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread ], [ %i.mf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332.thread ], [ %i.mf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @__cxa_free_exception(ptr %i.lo) #20
  br label %bb.bj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %vector.body753, %scalar.ph751
  %i.mn = icmp ne ptr %i.kp, %i.jx
  call void @llvm.assume(i1 %i.mn)
  %i.mo = load i64, ptr %i.jx, align 8, !tbaa !95
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.mp) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  store ptr %i.ef, ptr %20, align 8, !tbaa !112
  %i.mq = load i64, ptr %i.eh, align 8
  %i.mr = getelementptr inbounds i8, ptr %20, i64 %i.mq
  store ptr %i.eg, ptr %i.mr, align 8, !tbaa !112
  %i.ms = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ms, align 8, !tbaa !112
  %i.mt = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !94 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %20, i64 96 ; 2 uses
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335
  %i.mx = load i64, ptr %i.mv, align 8, !tbaa !95
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.my) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit340

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit340: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i338
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ms, align 8, !tbaa !112
  %i.mz = getelementptr inbounds nuw i8, ptr %20, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.mz) #20
  %i.na = getelementptr inbounds nuw i8, ptr %20, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.na) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.bm

scalar.ph751:                                     ; preds = %scalar.ph751, %scalar.ph751.preheader
  %indvars.iv615 = phi i64 [ 0, %scalar.ph751.preheader ], [ %indvars.iv.next616.3, %scalar.ph751 ] ; 6 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv615
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !95
  %i.nd = trunc nuw nsw i64 %indvars.iv615 to i32
  %i.ne = mul i32 %i.p, %i.nd
  %i.nf = or disjoint i32 %i.ne, 2
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.ng
  store i8 %i.nc, ptr %i.nh, align 1, !tbaa !95
  %indvars.iv.next616 = or disjoint i64 %indvars.iv615, 1 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.next616
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !95
  %i.nk = trunc nuw nsw i64 %indvars.iv.next616 to i32
  %i.nl = mul i32 %i.p, %i.nk
  %i.nm = add i32 %i.nl, 2
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.nn
  store i8 %i.nj, ptr %i.no, align 1, !tbaa !95
  %indvars.iv.next616.1 = or disjoint i64 %indvars.iv615, 2 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.next616.1
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !95
  %i.nr = trunc nuw nsw i64 %indvars.iv.next616.1 to i32
  %i.ns = mul i32 %i.p, %i.nr
  %i.nt = add i32 %i.ns, 2
  %i.nu = zext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.nu
  store i8 %i.nq, ptr %i.nv, align 1, !tbaa !95
  %indvars.iv.next616.2 = or disjoint i64 %indvars.iv615, 3 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kp, i64 %indvars.iv.next616.2
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !95
  %i.ny = trunc nuw nsw i64 %indvars.iv.next616.2 to i32
  %i.nz = mul i32 %i.p, %i.ny
  %i.oa = add i32 %i.nz, 2
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.ob
  store i8 %i.nx, ptr %i.oc, align 1, !tbaa !95
  %indvars.iv.next616.3 = add nuw nsw i64 %indvars.iv615, 4 ; 2 uses
  %exitcond618.not.3 = icmp eq i64 %indvars.iv.next616.3, 4096
  br i1 %exitcond618.not.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, label %scalar.ph751, !llvm.loop !289

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread542
  %.pn216.pn534 = phi { ptr, i32 } [ %i.lw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334 ], [ %.pn216.pn535, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.thread542 ], [ %i.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332 ] ; 2 uses
  %i.od = load ptr, ptr %21, align 8, !tbaa !94   ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.jx
  br i1 %i.oe, label %.body323, label %.body323.sink.split

.body323.sink.split:                              ; preds = %bb.bj, %bb.ay
  %.sink766 = phi ptr [ %i.kl, %bb.ay ], [ %i.od, %bb.bj ]
  %.pn216.pn.pn.ph = phi { ptr, i32 } [ %i.kk, %bb.ay ], [ %.pn216.pn534, %bb.bj ]
  %i.of = load i64, ptr %i.jx, align 8, !tbaa !95
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %.sink766, i64 noundef %i.og) #29
  br label %.body323

.body323:                                         ; preds = %.body323.sink.split, %bb.bj, %bb.ay
  %.pn216.pn.pn = phi { ptr, i32 } [ %i.kk, %bb.ay ], [ %.pn216.pn534, %bb.bj ], [ %.pn216.pn.pn.ph, %.body323.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.bk

bb.bk:                                            ; preds = %.body323, %bb.bh
  %.pn216.pn.pn.pn = phi { ptr, i32 } [ %.pn216.pn.pn, %.body323 ], [ %i.lu, %bb.bh ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %20) #20
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bg
  %.pn216.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn216.pn.pn.pn, %bb.bk ], [ %i.lt, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %bb.bn

bb.bm:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit340, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %bb.ds

bb.bn:                                            ; preds = %bb.bl, %bb.bf, %bb.aq, %bb.ac
  %.pn228.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn228.pn.pn.pn.pn, %bb.aq ], [ %.pn222.pn.pn.pn.pn, %bb.bf ], [ %.pn216.pn.pn.pn.pn, %bb.bl ], [ %i.dh, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %bb.gb

bb.bo:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  %i.oh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.k, i64 noundef 1)
          to label %bb.bp unwind label %bb.br     ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  %i.oi = load i8, ptr %i.k, align 1, !tbaa !95   ; 2 uses
  %i.oj = and i8 %i.oi, 1
  store i8 %i.oj, ptr %i.l, align 1, !tbaa !76
  %i.ok = icmp ugt i8 %2, 17
  br i1 %i.ok, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ol = lshr i8 %i.oi, 3
  %.lobit = and i8 %i.ol, 1
  %i.om = xor i8 %.lobit, 1
  store i8 %i.om, ptr %i.o, align 2, !tbaa !75
  br label %bb.bs

bb.br:                                            ; preds = %bb.bo
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %25, i32 noundef 4)
          to label %bb.bt unwind label %bb.cb

bb.bt:                                            ; preds = %bb.bs
  invoke void @_Z10decompressRSiRSoh(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %25, i8 noundef zeroext %2)
          to label %bb.bu unwind label %bb.cc

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.oo = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  store ptr %i.oo, ptr %26, align 8, !tbaa !135, !alias.scope !309
  %i.op = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  store i64 0, ptr %i.op, align 8, !tbaa !137, !alias.scope !309
  store i8 0, ptr %i.oo, align 8, !tbaa !95, !alias.scope !309
  %i.oq = getelementptr inbounds nuw i8, ptr %25, i64 48
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !178, !noalias !309 ; 3 uses
  %.not.i.not.i.i344 = icmp eq ptr %i.or, null
  %i.os = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.ot = load ptr, ptr %i.os, align 8, !noalias !309 ; 2 uses
  %i.ou = icmp ugt ptr %i.or, %i.ot
  %.08.i.i.i345 = select i1 %i.ou, ptr %i.or, ptr %i.ot ; 2 uses
  %.not5.i.i346 = icmp eq ptr %.08.i.i.i345, null
  %.not.i.i347 = select i1 %.not.i.not.i.i344, i1 true, i1 %.not5.i.i346
  br i1 %.not.i.i347, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ov = getelementptr inbounds nuw i8, ptr %25, i64 40
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !179, !noalias !309 ; 2 uses
  %i.ox = ptrtoint ptr %.08.i.i.i345 to i64
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = sub i64 %i.ox, %i.oy
  %i.pa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef 0, i64 noundef 0, ptr noundef %i.ow, i64 noundef %i.oz)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit353 unwind label %bb.bw ; 0 uses

bb.bw:                                            ; preds = %bb.bx, %bb.bv
  %i.pb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pc = load ptr, ptr %26, align 8, !tbaa !94, !alias.scope !309 ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.oo
  br i1 %i.pd, label %.body351, label %.body351.sink.split

bb.bx:                                            ; preds = %bb.bu
  %i.pe = getelementptr inbounds nuw i8, ptr %25, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %i.pe)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit353 unwind label %bb.bw

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit353: ; preds = %bb.bx, %bb.bv
  %i.pf = load i64, ptr %i.op, align 8, !tbaa !137
  %.not = icmp eq i64 %i.pf, 12288
  br i1 %.not, label %.preheader575, label %bb.by

.preheader575:                                    ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit353
  %i.pg = load ptr, ptr %26, align 8, !tbaa !94   ; 2 uses
  br label %bb.cf

bb.by:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit353
  %i.ph = call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8MapBlock17deSerialize_pre22ERSihb, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.bz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.thread

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.33)
          to label %bb.ca unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.thread

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ph, ptr noundef nonnull align 8 dereferenceable(32) %27)
  invoke void @__cxa_throw(ptr nonnull %i.ph, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #31
          to label %bb.gd unwind label %bb.cd

bb.cb:                                            ; preds = %bb.bs
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.cc:                                            ; preds = %bb.bt
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.thread: ; preds = %bb.by
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.thread554

bb.cd:                                            ; preds = %bb.ca
  %i.pl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pm = load ptr, ptr %27, align 8, !tbaa !94   ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354: ; preds = %bb.cd
  %i.pp = load i64, ptr %i.pn, align 8, !tbaa !95
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354
  %i.pr = load ptr, ptr %28, align 8, !tbaa !94   ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.pt = icmp eq ptr %i.pr, %i.ps
  br i1 %i.pt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.thread: ; preds = %bb.bz
  %i.pu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pv = load ptr, ptr %28, align 8, !tbaa !94   ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.px = icmp eq ptr %i.pv, %i.pw
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.thread554, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356.thread
  %i.py = load i64, ptr %i.pw, align 8, !tbaa !95
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.pz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.thread554

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356
  %i.qa = load i64, ptr %i.ps, align 8, !tbaa !95
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %i.pr, i64 noundef %i.qb) #29
end_hunk_0
