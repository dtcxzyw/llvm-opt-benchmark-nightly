Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmFileCopier?download=true
inline.NumInlined: 865
inline.NumDeleted: 256
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12cmFileCopier16InstallDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS_15MatchPropertiesE:bb.a
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.2, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNK5cmsys6Status9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.af = load ptr, ptr %10, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !57
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.af, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83 unwind label %bb.n

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83: ; preds = %bb.h
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83
  %i.ak = load ptr, ptr %10, align 8, !tbaa !61   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85
  %i.an = load i64, ptr %i.al, align 8, !tbaa !58
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !87, !nonnull !31, !align !32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.ar, ptr %11, align 8, !tbaa !56, !alias.scope !304
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !57, !alias.scope !304
  store i8 0, ptr %i.ar, align 8, !tbaa !58, !alias.scope !304
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !95, !noalias !304 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.au, null
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !304 ; 2 uses
  %i.ax = icmp ugt ptr %i.au, %i.aw
  %.08.i.i.i = select i1 %i.ax, ptr %i.au, ptr %i.aw ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !97, !noalias !304 ; 2 uses
  %i.ba = ptrtoint ptr %.08.i.i.i to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.az, i64 noundef %i.bc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %11, align 8, !tbaa !61, !alias.scope !304 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ar
  br i1 %i.bg, label %.body, label %.body.sink.split

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.o

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bj = load ptr, ptr %11, align 8, !tbaa !61   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ar
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bl = load i64, ptr %i.ar, align 8, !tbaa !58
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.bn = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !9
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %9, i64 %i.bq
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bs, align 8, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !61 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !58
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bs, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bz) #23
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ca) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ak

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g, %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit81
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit83, %bb.h
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %10, align 8, !tbaa !61   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.n
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !58
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.m ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.cd, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %11, align 8, !tbaa !61   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ar
  br i1 %i.cl, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.o, %bb.j
  %.sink = phi ptr [ %i.bf, %bb.j ], [ %i.ck, %bb.o ]
  %.pn61.ph = phi { ptr, i32 } [ %i.be, %bb.j ], [ %i.cj, %bb.o ]
  %i.cm = load i64, ptr %i.ar, align 8, !tbaa !58
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cn) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.o, %bb.j
  %.pn61 = phi { ptr, i32 } [ %i.be, %bb.j ], [ %i.cj, %bb.o ], [ %.pn61.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.p

bb.p:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.l
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.cb, %bb.l ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.al

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %.not = icmp eq i64 %.sroa.1.0.extract.shift, 0
  br i1 %.not, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.q
  store i32 %.sroa.1.0.extract.trunc, ptr %i.c, align 4, !tbaa !297
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !53 ; 3 uses
  store i32 %i.cp, ptr %i.c, align 4, !tbaa !297
  %.not64 = icmp eq i32 %i.cp, 0
  br i1 %.not64, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = call i64 @_ZN5cmsys11SystemTools14GetPermissionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  %.pre = load i32, ptr %i.c, align 4, !tbaa !297
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s, %bb.r
  %i.cr = phi i32 [ %.sroa.1.0.extract.trunc, %.thread ], [ %.pre, %bb.s ], [ %i.cp, %bb.r ] ; 3 uses
  %i.cs = and i32 %i.cr, 448
  %i.ct = icmp eq i32 %i.cs, 448
  %i.cu = or i32 %i.cr, 448
  %.037 = select i1 %i.ct, i32 0, i32 %i.cr
  %i.cv = call noundef zeroext i1 @_ZN12cmFileCopier14SetPermissionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.cu)
  br i1 %i.cv, label %bb.u, label %bb.aj

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZN5cmsys9DirectoryC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !57
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = invoke i64 @_ZN5cmsys9Directory4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef null)
          to label %bb.x unwind label %bb.w       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.db = invoke noundef i64 @_ZNK5cmsys9Directory16GetNumberOfFilesEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.preheader unwind label %bb.y ; 2 uses

.preheader:                                       ; preds = %bb.x
  %.not69123.not = icmp eq i64 %i.db, 0
  br i1 %.not69123.not, label %.critedge75, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0..sroa_idx.i.i99 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i3.i100 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i11.i101 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.4.0..sroa_idx.i19.i102 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  br label %bb.z

bb.y:                                             ; preds = %.critedge75, %bb.x
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.z:                                             ; preds = %.lr.ph, %.critedge
  %.0124 = phi i64 [ 0, %.lr.ph ], [ %i.fi, %.critedge ] ; 2 uses
  %i.du = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5cmsys9Directory11GetFileNameB5cxx11Em(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %.0124)
          to label %bb.aa unwind label %bb.ad     ; 5 uses

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 3 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !57
  switch i64 %i.dw, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread [
    i64 1, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 2, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.aa
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !61
  %lhsc = load i8, ptr %i.dx, align 1
  %.not121 = icmp eq i8 %lhsc, 46
  br i1 %.not121, label %.critedge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97: ; preds = %bb.aa
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !61
  %i.dz = load i16, ptr %i.dy, align 1
  %i.ea = icmp ne i16 %i.dz, 11822
  %i.eb = zext i1 %i.ea to i32
  %.not122 = icmp eq i32 %i.eb, 0
  br i1 %.not122, label %.critedge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.aa, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !305
  %i.ec = load ptr, ptr %1, align 8, !tbaa !61, !noalias !305
  %i.ed = load i64, ptr %i.cw, align 8, !tbaa !57, !noalias !305
  store i64 %i.ed, ptr %6, align 8, !tbaa !109, !alias.scope !308, !noalias !305
  store ptr %i.ec, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !108, !alias.scope !308, !noalias !305
  store ptr null, ptr %i.dc, align 8, !tbaa !113, !alias.scope !308, !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !305
  store i64 0, ptr %7, align 8, !noalias !305
  store i8 47, ptr %i.df, align 8, !tbaa !58, !noalias !305
  store i64 1, ptr %i.de, align 8, !tbaa !109, !noalias !305
  store ptr %i.df, ptr %.sroa.4.0..sroa_idx.i3.i, align 8, !tbaa !108, !noalias !305
  store i64 1, ptr %i.dd, align 8, !tbaa !109, !alias.scope !311, !noalias !305
  store ptr %i.df, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !108, !alias.scope !311, !noalias !305
  store ptr null, ptr %i.dg, align 8, !tbaa !113, !alias.scope !311, !noalias !305
  %i.ee = load ptr, ptr %i.du, align 8, !tbaa !61, !noalias !305
  %i.ef = load i64, ptr %i.dv, align 8, !tbaa !57, !noalias !305
  store i64 %i.ef, ptr %i.dh, align 8, !tbaa !109, !alias.scope !314, !noalias !305
  store ptr %i.ee, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !tbaa !108, !alias.scope !314, !noalias !305
  store ptr null, ptr %i.di, align 8, !tbaa !113, !alias.scope !314, !noalias !305
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull %6, i64 3)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !317
  %i.eg = load ptr, ptr %2, align 8, !tbaa !61, !noalias !317
  %i.eh = load i64, ptr %i.dj, align 8, !tbaa !57, !noalias !317
  store i64 %i.eh, ptr %4, align 8, !tbaa !109, !alias.scope !320, !noalias !317
  store ptr %i.eg, ptr %.sroa.4.0..sroa_idx.i.i99, align 8, !tbaa !108, !alias.scope !320, !noalias !317
  store ptr null, ptr %i.dk, align 8, !tbaa !113, !alias.scope !320, !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !317
  store i64 0, ptr %5, align 8, !noalias !317
  store i8 47, ptr %i.dn, align 8, !tbaa !58, !noalias !317
  store i64 1, ptr %i.dm, align 8, !tbaa !109, !noalias !317
  store ptr %i.dn, ptr %.sroa.4.0..sroa_idx.i3.i100, align 8, !tbaa !108, !noalias !317
  store i64 1, ptr %i.dl, align 8, !tbaa !109, !alias.scope !323, !noalias !317
  store ptr %i.dn, ptr %.sroa.4.0..sroa_idx.i11.i101, align 8, !tbaa !108, !alias.scope !323, !noalias !317
  store ptr null, ptr %i.do, align 8, !tbaa !113, !alias.scope !323, !noalias !317
  %i.ei = load ptr, ptr %i.du, align 8, !tbaa !61, !noalias !317
  %i.ej = load i64, ptr %i.dv, align 8, !tbaa !57, !noalias !317
  store i64 %i.ej, ptr %i.dp, align 8, !tbaa !109, !alias.scope !326, !noalias !317
  store ptr %i.ei, ptr %.sroa.4.0..sroa_idx.i19.i102, align 8, !tbaa !108, !alias.scope !326, !noalias !317
  store ptr null, ptr %i.dq, align 8, !tbaa !113, !alias.scope !326, !noalias !317
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull %4, i64 3)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !317
  %i.ek = load ptr, ptr %0, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef zeroext i1 %i.em(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ah unwind label %bb.ag

bb.ad:                                            ; preds = %bb.z
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ae:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit97.thread
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.af:                                            ; preds = %bb.ab
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.ag:                                            ; preds = %bb.ac
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = load ptr, ptr %14, align 8, !tbaa !61   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.dr
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ag
  %i.eu = load i64, ptr %i.dr, align 8, !tbaa !58
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.ah:                                            ; preds = %bb.ac
  %i.ew = load ptr, ptr %14, align 8, !tbaa !61   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.dr
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.ah
  %i.ey = load i64, ptr %i.dr, align 8, !tbaa !58
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.fa = load ptr, ptr %13, align 8, !tbaa !61   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ds
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.fc = load i64, ptr %i.ds, align 8, !tbaa !58
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %i.en, label %.critedge, label %.loopexit
end_hunk_0
