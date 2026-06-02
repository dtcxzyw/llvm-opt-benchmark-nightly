inline.NumInlined: 5804
inline.NumDeleted: 1972
begin_hunk_0_@_ZN16OpenColorIO_v2_514CTFReaderOpElt5startEPPKc:bb.a
  %.sink419 = phi ptr [ %i.qo, %bb.eg ], [ %i.ry, %bb.ep ]
  %.pn72.ph = phi { ptr, i32 } [ %i.qn, %bb.eg ], [ %i.rx, %bb.ep ]
  %i.sa = load i64, ptr %i.qa, align 8, !tbaa !36
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %.sink419, i64 noundef %i.sb) #33
  br label %.body232

.body232:                                         ; preds = %.body232.sink.split, %bb.ep, %bb.eg
  %.pn72 = phi { ptr, i32 } [ %i.qn, %bb.eg ], [ %i.rx, %bb.ep ], [ %.pn72.ph, %.body232.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %bb.eq

bb.eq:                                            ; preds = %.body232, %bb.eo
  %.pn72.pn = phi { ptr, i32 } [ %.pn72, %.body232 ], [ %i.rw, %bb.eo ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #31
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.en
  %.pn72.pn.pn = phi { ptr, i32 } [ %.pn72.pn, %bb.eq ], [ %i.rv, %bb.en ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  %i.sc = load ptr, ptr %18, align 8, !tbaa !46   ; 2 uses
  %i.sd = icmp eq ptr %i.sc, %i.pe
  br i1 %i.sd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.er
  %i.se = load i64, ptr %i.pe, align 8, !tbaa !36
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.sf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249, %bb.em, %bb.el
  %.pn72.pn.pn.pn = phi { ptr, i32 } [ %i.rt, %bb.el ], [ %i.ru, %bb.em ], [ %.pn72.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249 ], [ %.pn72.pn.pn, %bb.er ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  %i.sg = load ptr, ptr %17, align 8, !tbaa !46   ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.or
  br i1 %i.sh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251
  %i.si = load i64, ptr %i.or, align 8, !tbaa !36
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.ek, %bb.ej
  %.pn72.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rr, %bb.ej ], [ %i.rs, %bb.ek ], [ %.pn72.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %.pn72.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %.body167

bb.es:                                            ; preds = %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %bb.dp
  %i.sk = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %.not8.i = icmp eq ptr %i.sk, null
  br i1 %.not8.i, label %_ZNK16OpenColorIO_v2_514CTFReaderOpElt21validateXmlParametersEPPKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.es, %bb.eu
  %i.sl = phi ptr [ %i.sv, %bb.eu ], [ %i.sk, %bb.es ]
  %i.sm = phi ptr [ %i.su, %bb.eu ], [ %1, %bb.es ]
  %.09.i = phi i32 [ %i.ss, %bb.eu ], [ 0, %bb.es ]
  %i.sn = load ptr, ptr %0, align 8, !tbaa !11
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 80
  %i.sp = load ptr, ptr %i.so, align 8
  %i.sq = call noundef zeroext i1 %i.sp(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.sl) #31, !inline_history !301
  br i1 %i.sq, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %.lr.ph.i
  %i.sr = load ptr, ptr %i.sm, align 8, !tbaa !43
  invoke void @_ZNK16OpenColorIO_v2_516XmlReaderElement19logParameterWarningEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.sr)
          to label %bb.eu unwind label %bb.ev

bb.eu:                                            ; preds = %bb.et, %.lr.ph.i
  %i.ss = add i32 %.09.i, 2                       ; 2 uses
  %i.st = zext i32 %i.ss to i64
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.st ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !43 ; 2 uses
  %.not.i255 = icmp eq ptr %i.sv, null
  br i1 %.not.i255, label %_ZNK16OpenColorIO_v2_514CTFReaderOpElt21validateXmlParametersEPPKc.exit, label %.lr.ph.i, !llvm.loop !302

bb.ev:                                            ; preds = %bb.et
  %i.sw = landingpad { ptr, i32 }
          catch ptr null
  %i.sx = extractvalue { ptr, i32 } %i.sw, 0
  call void @__clang_call_terminate(ptr %i.sx) #35
  unreachable

_ZNK16OpenColorIO_v2_514CTFReaderOpElt21validateXmlParametersEPPKc.exit: ; preds = %bb.eu, %bb.es
  %i.sy = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.sy, ptr %4, align 8, !tbaa !11
  %i.sz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ta = getelementptr i8, ptr %i.sy, i64 -24
  %i.tb = load i64, ptr %i.ta, align 8
  %i.tc = getelementptr inbounds i8, ptr %4, i64 %i.tb
  store ptr %i.sz, ptr %i.tc, align 8, !tbaa !11
  %i.td = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.td, align 8, !tbaa !11
  %i.te = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !46 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.th = icmp eq ptr %i.tf, %i.tg
  br i1 %i.th, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i256: ; preds = %_ZNK16OpenColorIO_v2_514CTFReaderOpElt21validateXmlParametersEPPKc.exit
  %i.ti = load i64, ptr %i.tg, align 8, !tbaa !36
  %i.tj = add i64 %i.ti, 1
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef %i.tj) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit258

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit258: ; preds = %_ZNK16OpenColorIO_v2_514CTFReaderOpElt21validateXmlParametersEPPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i256
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.td, align 8, !tbaa !11
  %i.tk = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.tk) #31
  %i.tl = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.tl) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

.body167:                                         ; preds = %bb.cs, %bb.cq, %bb.bb, %bb.be, %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %bb.ba, %.body, %bb.av
  %.pn89.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.av ], [ %.pn64, %bb.ba ], [ %.pn.pn, %.body ], [ %.pn89.pn, %bb.be ], [ %.pn86.pn, %bb.bx ], [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %i.gx, %bb.bb ], [ %.pn72.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %i.mt, %bb.df ], [ %i.lo, %bb.cs ], [ %.pn.pn.i, %bb.cq ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn89.pn.pn.pn
}

declare void @_ZN16OpenColorIO_v2_58LogDebugERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_56OpData5setIDERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN16OpenColorIO_v2_56OpData7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 9) i32 @_ZN16OpenColorIO_v2_514CTFReaderOpElt11GetBitDepthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !44
  %i.c = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.e, ptr %i.a, align 8, !tbaa !45
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !46
  %i.h = load i64, ptr %i.a, align 8, !tbaa !45
  store i64 %i.h, ptr %i.b, align 8, !tbaa !36
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !36
  store i8 %i.j, ptr %i.i, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !47
  %i.m = load ptr, ptr %2, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.o = load ptr, ptr %2, align 8, !tbaa !46, !noalias !303 ; 7 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !47, !noalias !303 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %.not6.i.i = icmp samesign eq i64 %i.p, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.p, 24
  %n.vec = and i64 %i.p, -32                      ; 4 uses
  %i.r = getelementptr i8, ptr %i.o, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %index ; 3 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !36, !noalias !303 ; 2 uses
  %wide.load42 = load <16 x i8>, ptr %i.s, align 1, !tbaa !36, !noalias !303 ; 2 uses
  %i.t = add <16 x i8> %wide.load, splat (i8 -65)
  %i.u = add <16 x i8> %wide.load42, splat (i8 -65)
  %i.v = icmp ult <16 x i8> %i.t, splat (i8 26)
  %i.w = icmp ult <16 x i8> %i.u, splat (i8 26)
  %3 = select <16 x i1> %i.v, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.x = or disjoint <16 x i8> %wide.load, %3
  %i.y = select <16 x i1> %i.w, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %4 = or disjoint <16 x i8> %wide.load42, %i.y
  store <16 x i8> %i.x, ptr %next.gep, align 1, !tbaa !36, !noalias !303
  store <16 x i8> %4, ptr %i.s, align 1, !tbaa !36, !noalias !303
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !309

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.p, -8                     ; 3 uses
  %i.aa = getelementptr i8, ptr %i.o, i64 %n.vec44
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.o, i64 %index45 ; 2 uses
  %wide.load47 = load <8 x i8>, ptr %next.gep46, align 1, !tbaa !36, !noalias !303 ; 2 uses
  %i.ab = add <8 x i8> %wide.load47, splat (i8 -65)
  %i.ac = icmp ult <8 x i8> %i.ab, splat (i8 26)
  %5 = select <8 x i1> %i.ac, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %6 = or disjoint <8 x i8> %wide.load47, %5
  store <8 x i8> %6, ptr %next.gep46, align 1, !tbaa !36, !noalias !303
  %index.next48 = add nuw i64 %index45, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next48, %n.vec44
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !310

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.p, %n.vec44
  br i1 %cmp.n49, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.o, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !36, !noalias !303 ; 3 uses
  %i.af = add i8 %i.ae, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.af, 26
  %i.ag = or disjoint i8 %i.ae, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.ag, i8 %i.ae
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !36, !noalias !303
  %i.ah = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.q
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !311

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !46, !noalias !303
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ai = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.aj, ptr %1, align 8, !tbaa !44, !alias.scope !303
  %i.ak = icmp eq ptr %i.ai, %i.b
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.al = load i64, ptr %i.l, align 8, !tbaa !47, !noalias !303 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.ai, ptr %1, align 8, !tbaa !46, !alias.scope !303
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !36, !noalias !303
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !36, !alias.scope !303
  %.pre4.i = load i64, ptr %i.l, align 8, !tbaa !47, !noalias !303
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.ap = phi ptr [ %i.aj, %bb.d ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 13 uses
  %i.aq = phi i64 [ %i.al, %bb.d ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !47, !alias.scope !303
  store ptr %i.b, ptr %2, align 8, !tbaa !46, !noalias !303
  store i64 0, ptr %i.l, align 8, !tbaa !47, !noalias !303
  store i8 0, ptr %i.b, align 8, !tbaa !36, !noalias !303
  switch i64 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = load i16, ptr %i.ap, align 1
  %i.at = icmp ne i16 %i.as, 26936
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  %spec.select37 = zext i1 %i.av to i32
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = load i16, ptr %i.ap, align 1
  %i.ax = xor i16 %i.aw, 12337
  %i.ay = getelementptr i8, ptr %i.ap, i64 2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = xor i16 %i.ba, 105
  %i.bc = or i16 %i.ax, %i.bb
  %i.bd = icmp ne i16 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  %i.bg = load i16, ptr %i.ap, align 1
  %i.bh = xor i16 %i.bg, 12849
  %i.bi = getelementptr i8, ptr %i.ap, i64 2
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i16
  %i.bl = xor i16 %i.bk, 105
  %i.bm = or i16 %i.bh, %i.bl
  %i.bn = icmp ne i16 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16
  %i.bq = load i16, ptr %i.ap, align 1
  %i.br = xor i16 %i.bq, 13873
  %i.bs = getelementptr i8, ptr %i.ap, i64 2
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i16
  %i.bv = xor i16 %i.bu, 105
  %i.bw = or i16 %i.br, %i.bv
  %i.bx = icmp ne i16 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
  %i.ca = load i16, ptr %i.ap, align 1
  %i.cb = xor i16 %i.ca, 13873
  %i.cc = getelementptr i8, ptr %i.ap, i64 2
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i16
  %i.cf = xor i16 %i.ce, 102
  %i.cg = or i16 %i.cb, %i.cf
  %i.ch = icmp ne i16 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  %i.ck = load i16, ptr %i.ap, align 1
  %i.cl = xor i16 %i.ck, 12851
  %i.cm = getelementptr i8, ptr %i.ap, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i16
  %i.cp = xor i16 %i.co, 102
  %i.cq = or i16 %i.cl, %i.cp
  %i.cr = icmp ne i16 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %bcmp.i21.fr = freeze i32 %i.cs
  %i.ct = icmp eq i32 %bcmp.i21.fr, 0
  %spec.select = select i1 %i.ct, i32 8, i32 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  %.04 = phi i32 [ 7, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ %spec.select37, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14 ], [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16 ], [ 5, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18 ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.cu = icmp eq ptr %i.ap, %i.aj
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cv = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.cv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cw = load i64, ptr %i.aj, align 8, !tbaa !36
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.cx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret i32 %.04
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_16ThrowMIA28_cJPKcS4_EEEvRKNS_16XmlReaderElementERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %1) #31
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 1 dereferenceable(28) %1, i64 noundef %i.a)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.a
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIPKcJS3_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr %2, ptr noundef %3)
          to label %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA28_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit unwind label %bb.f

_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA28_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !44, !alias.scope !318
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !47, !alias.scope !318
  store i8 0, ptr %i.c, align 8, !tbaa !36, !alias.scope !318
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59, !noalias !318 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !318 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_113PrintInStreamIA28_cJPKcS4_EEEvRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKT_DpT0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63, !noalias !318 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
end_hunk_0
