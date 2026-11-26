Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/metadata?download=true
inline.NumInlined: 1534
inline.NumDeleted: 728
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK5osgeo4proj8metadata10Identifier13_exportToJSONEPNS0_2io13JSONFormatterE:bb.a
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !140
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread118

bb.aw:                                            ; preds = %.noexc.i83
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.ax:                                            ; preds = %bb.au
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eb
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.ax
  %i.et = load i64, ptr %i.eb, align 8, !tbaa !38
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.aw
  %.pn43 = phi { ptr, i32 } [ %i.ep, %bb.aw ], [ %i.eq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.eq, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.bc

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread118_crit_edge, %bb.at, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.ar
  %i.ev = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread118_crit_edge ], [ %i.dm, %bb.at ], [ %i.dm, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.dm, %bb.ar ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 184
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !36, !range !39, !noundef !40
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread118
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ez, ptr %9, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ez, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 3, ptr %i.fa, align 8, !tbaa !41
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 19
  store i8 0, ptr %i.fb, align 1, !tbaa !38
  invoke void @_ZN5osgeo4proj22CPLJSonStreamingWriter9AddObjKeyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(153) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fc = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ez
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.az
  %i.fe = load i64, ptr %i.ez, align 8, !tbaa !38
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.fg = load ptr, ptr %i.f, align 8, !tbaa !140
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 192
  invoke void @_ZN5osgeo4proj22CPLJSonStreamingWriter3AddERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(153) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.fh)
          to label %bb.bb unwind label %bb.am

bb.ba:                                            ; preds = %bb.ay
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ez
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.ba
  %i.fl = load i64, ptr %i.ez, align 8, !tbaa !38
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.bc

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread118
  call void @_ZN5osgeo4proj2io13JSONFormatter13ObjectContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.be

bb.bc:                                            ; preds = %bb.am, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.merged50 = phi { ptr, i32 } [ %i.de, %bb.al ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.dl, %bb.ao ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %eh.lpad-body, %.body ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %i.df, %bb.am ]
  call void @_ZN5osgeo4proj2io13JSONFormatter13ObjectContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #35
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ab
  %.merged49 = phi { ptr, i32 } [ %.merged50, %bb.bc ], [ %i.ca, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb, %bb.k, %bb.j
  %i.fn = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.y
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.be
  %i.fp = load i64, ptr %i.y, align 8, !tbaa !38
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.fr = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.j
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.ft = load i64, ptr %i.j, align 8, !tbaa !38
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void

bb.bf:                                            ; preds = %bb.aa, %bb.bd
  %.merged47 = phi { ptr, i32 } [ %i.bz, %bb.aa ], [ %.merged49, %bb.bd ] ; 2 uses
  %i.fv = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.y
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.bf
  %i.fx = load i64, ptr %i.y, align 8, !tbaa !38
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.i
  %.merged = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %.merged47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %.merged47, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.fz = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.j
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.gb = load i64, ptr %i.j, align 8, !tbaa !38
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %.merged

bb.bg:                                            ; preds = %bb.al
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #37
  unreachable
}

declare hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj2io13JSONFormatter15databaseContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare hidden noundef ptr @_ZNK5osgeo4proj2io13JSONFormatter6writerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN5osgeo4proj22CPLJSonStreamingWriter9AddObjKeyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(153), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN5osgeo4proj22CPLJSonStreamingWriter3AddERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(153), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN5osgeo4proj22CPLJSonStreamingWriter11AddUnquotedEPKc(ptr noundef nonnull align 8 dereferenceable(153), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5osgeo4proj2io13JSONFormatter13ObjectContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: uwtable
define hidden void @_ZThn24_NK5osgeo4proj8metadata10Identifier13_exportToJSONEPNS0_2io13JSONFormatterE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZNK5osgeo4proj8metadata10Identifier13_exportToJSONEPNS0_2io13JSONFormatterE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i64 0, ptr %i.b, align 8, !tbaa !41
  store i8 0, ptr %i.a, align 8, !tbaa !38
  %i.c = load ptr, ptr %1, align 8, !tbaa !37     ; 9 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !38    ; 2 uses
  %.not167 = icmp eq i8 %i.d, 0
  br i1 %.not167, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.thread145
  %i.e = phi i8 [ %i.io, %.thread145 ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = phi ptr [ %i.in, %.thread145 ], [ %i.c, %bb.a ] ; 8 uses
  %storemerge168 = phi i64 [ %i.im, %.thread145 ], [ 0, %bb.a ] ; 26 uses
  %i.g = add i8 %i.e, -65
  %or.cond.i = icmp ult i8 %i.g, 26
  %i.h = add nuw nsw i8 %i.e, 32
  %i.i = select i1 %or.cond.i, i8 %i.h, i8 %i.e   ; 5 uses
  switch i8 %i.i, label %bb.j [
    i8 32, label %bb.b
    i8 49, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %i.f, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !38
  %i.l = icmp eq i8 %i.k, 43
  br i1 %i.l, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %storemerge168, 2                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !38
  %i.p = icmp eq i8 %i.o, 32
  br i1 %i.p, label %.thread145, label %bb.j

bb.d:                                             ; preds = %.lr.ph
  %i.q = load i64, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %0, align 8, !tbaa !37
  %i.t = getelementptr i8, ptr %i.s, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !38
  %i.w = add i8 %i.v, -48
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.f, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !38
  %i.aa = icmp eq i8 %i.z, 57
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %i.f, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !38
  %i.ad = add i8 %i.ac, -48
  %i.ae = icmp ult i8 %i.ad, 10
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.f, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = add i64 %storemerge168, 1
  br label %.thread145

bb.j:                                             ; preds = %bb.b, %bb.c, %.lr.ph, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  br i1 %2, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  switch i8 %i.i, label %.loopexit [
    i8 122, label %bb.l
    i8 104, label %bb.p
    i8 110, label %bb.v
    i8 115, label %bb.ab
  ]

bb.l:                                             ; preds = %bb.k
  %.not.i = icmp eq i64 %storemerge168, 0
  br i1 %.not.i, label %.thread150, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %i.f, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !38
  switch i8 %i.al, label %.thread150 [
    i8 95, label %.lr.ph.i.i
    i8 47, label %.lr.ph.i.i
    i8 46, label %.lr.ph.i.i
    i8 45, label %.lr.ph.i.i
    i8 41, label %.lr.ph.i.i
    i8 40, label %.lr.ph.i.i
    i8 38, label %.lr.ph.i.i
    i8 32, label %.lr.ph.i.i
    i8 44, label %.lr.ph.i.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !38  ; 4 uses
  %.not.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i, label %.thread150, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.ao = add i8 %i.an, -65
  %or.cond.i.i.i.1 = icmp ult i8 %i.ao, 26
  %i.ap = add nuw nsw i8 %i.an, 32
  %i.aq = select i1 %or.cond.i.i.i.1, i8 %i.ap, i8 %i.an
  %.not14.i.i.1 = icmp eq i8 %i.aq, 111
  br i1 %.not14.i.i.1, label %bb.n, label %.thread150

bb.n:                                             ; preds = %.lr.ph.i.i.1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !38  ; 4 uses
  %.not.i.i.1 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.1, label %.thread150, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.n
  %i.at = add i8 %i.as, -65
  %or.cond.i.i.i.2 = icmp ult i8 %i.at, 26
  %i.au = add nuw nsw i8 %i.as, 32
  %i.av = select i1 %or.cond.i.i.i.2, i8 %i.au, i8 %i.as
  %.not14.i.i.2 = icmp eq i8 %i.av, 110
  br i1 %.not14.i.i.2, label %bb.o, label %.thread150

bb.o:                                             ; preds = %.lr.ph.i.i.2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !38  ; 4 uses
  %.not.i.i.2 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.2, label %.thread150, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.o
  %i.ay = add i8 %i.ax, -65
  %or.cond.i.i.i.3 = icmp ult i8 %i.ay, 26
  %i.az = add nuw nsw i8 %i.ax, 32
  %i.ba = select i1 %or.cond.i.i.i.3, i8 %i.az, i8 %i.ax
  %.not14.i.i.3 = icmp eq i8 %i.ba, 101
  br i1 %.not14.i.i.3, label %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEcPKcRmSD_.exit", label %.thread150

"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEcPKcRmSD_.exit": ; preds = %.lr.ph.i.i.3
  %i.bb = add i64 %storemerge168, 3
  br label %.thread145

bb.p:                                             ; preds = %bb.k
  %.not.i44 = icmp eq i64 %storemerge168, 0
  br i1 %.not.i44, label %.thread150, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr i8, ptr %i.c, i64 %storemerge168 ; 6 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !38
  switch i8 %i.be, label %.thread150 [
    i8 95, label %.lr.ph.i.i46.preheader.a
    i8 47, label %.lr.ph.i.i46.preheader.a
    i8 46, label %.lr.ph.i.i46.preheader.a
    i8 45, label %.lr.ph.i.i46.preheader.a
    i8 41, label %.lr.ph.i.i46.preheader.a
    i8 40, label %.lr.ph.i.i46.preheader.a
    i8 38, label %.lr.ph.i.i46.preheader.a
    i8 32, label %.lr.ph.i.i46.preheader.a
    i8 44, label %.lr.ph.i.i46.preheader.a
  ]

.lr.ph.i.i46.preheader.a:                         ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !38  ; 4 uses
  %.not.i.i52 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i52, label %.thread150, label %.lr.ph.i.i46.1

.lr.ph.i.i46.1:                                   ; preds = %.lr.ph.i.i46.preheader.a
  %i.bh = add i8 %i.bg, -65
  %or.cond.i.i.i49.1 = icmp ult i8 %i.bh, 26
  %i.bi = add nuw nsw i8 %i.bg, 32
  %i.bj = select i1 %or.cond.i.i.i49.1, i8 %i.bi, i8 %i.bg
  %.not14.i.i51.1 = icmp eq i8 %i.bj, 101
  br i1 %.not14.i.i51.1, label %bb.r, label %.thread150

bb.r:                                             ; preds = %.lr.ph.i.i46.1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !38  ; 4 uses
  %.not.i.i52.1 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i52.1, label %.thread150, label %.lr.ph.i.i46.2

.lr.ph.i.i46.2:                                   ; preds = %bb.r
  %i.bm = add i8 %i.bl, -65
  %or.cond.i.i.i49.2 = icmp ult i8 %i.bm, 26
  %i.bn = add nuw nsw i8 %i.bl, 32
  %i.bo = select i1 %or.cond.i.i.i49.2, i8 %i.bn, i8 %i.bl
  %.not14.i.i51.2 = icmp eq i8 %i.bo, 105
  br i1 %.not14.i.i51.2, label %bb.s, label %.thread150

bb.s:                                             ; preds = %.lr.ph.i.i46.2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !38  ; 4 uses
  %.not.i.i52.2 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i52.2, label %.thread150, label %.lr.ph.i.i46.3

.lr.ph.i.i46.3:                                   ; preds = %bb.s
  %i.br = add i8 %i.bq, -65
  %or.cond.i.i.i49.3 = icmp ult i8 %i.br, 26
  %i.bs = add nuw nsw i8 %i.bq, 32
  %i.bt = select i1 %or.cond.i.i.i49.3, i8 %i.bs, i8 %i.bq
  %.not14.i.i51.3 = icmp eq i8 %i.bt, 103
  br i1 %.not14.i.i51.3, label %bb.t, label %.thread150

bb.t:                                             ; preds = %.lr.ph.i.i46.3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !38  ; 4 uses
  %.not.i.i52.3 = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i52.3, label %.thread150, label %.lr.ph.i.i46.4

.lr.ph.i.i46.4:                                   ; preds = %bb.t
  %i.bw = add i8 %i.bv, -65
  %or.cond.i.i.i49.4 = icmp ult i8 %i.bw, 26
  %i.bx = add nuw nsw i8 %i.bv, 32
  %i.by = select i1 %or.cond.i.i.i49.4, i8 %i.bx, i8 %i.bv
  %.not14.i.i51.4 = icmp eq i8 %i.by, 104
  br i1 %.not14.i.i51.4, label %bb.u, label %.thread150

bb.u:                                             ; preds = %.lr.ph.i.i46.4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 5
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !38  ; 4 uses
  %.not.i.i52.4 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i52.4, label %.thread150, label %.lr.ph.i.i46.5

.lr.ph.i.i46.5:                                   ; preds = %bb.u
  %i.cb = add i8 %i.ca, -65
  %or.cond.i.i.i49.5 = icmp ult i8 %i.cb, 26
  %i.cc = add nuw nsw i8 %i.ca, 32
  %i.cd = select i1 %or.cond.i.i.i49.5, i8 %i.cc, i8 %i.ca
  %.not14.i.i51.5 = icmp eq i8 %i.cd, 116
  br i1 %.not14.i.i51.5, label %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEcPKcRmSD_.exit58", label %.thread150

"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_0clEcPKcRmSD_.exit58": ; preds = %.lr.ph.i.i46.5
  %i.ce = add i64 %storemerge168, 5
  br label %.thread145

bb.v:                                             ; preds = %bb.k
  %.not.i61 = icmp eq i64 %storemerge168, 0
  br i1 %.not.i61, label %.thread150, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr i8, ptr %i.c, i64 %storemerge168 ; 5 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !38  ; 2 uses
  switch i8 %i.ch, label %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i.a [
    i8 95, label %.lr.ph.i.i63.preheader
    i8 47, label %.lr.ph.i.i63.preheader
    i8 46, label %.lr.ph.i.i63.preheader
    i8 45, label %.lr.ph.i.i63.preheader
    i8 41, label %.lr.ph.i.i63.preheader
    i8 40, label %.lr.ph.i.i63.preheader
    i8 38, label %.lr.ph.i.i63.preheader
    i8 32, label %.lr.ph.i.i63.preheader
    i8 44, label %.lr.ph.i.i63.preheader
  ]

_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i.a: ; preds = %bb.w
  %i.ci = add i8 %i.ch, -48
  %i.cj = icmp ult i8 %i.ci, 10
  br i1 %i.cj, label %.lr.ph.i.i63.preheader, label %.thread150

.lr.ph.i.i63.preheader:                           ; preds = %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i.a, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !38  ; 4 uses
  %.not.i.i69 = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i69, label %.thread150, label %.lr.ph.i.i63.1

.lr.ph.i.i63.1:                                   ; preds = %.lr.ph.i.i63.preheader
  %i.cm = add i8 %i.cl, -65
  %or.cond.i.i.i66.1 = icmp ult i8 %i.cm, 26
  %i.cn = add nuw nsw i8 %i.cl, 32
  %i.co = select i1 %or.cond.i.i.i66.1, i8 %i.cn, i8 %i.cl
  %.not14.i.i68.1 = icmp eq i8 %i.co, 111
  br i1 %.not14.i.i68.1, label %bb.x, label %.thread150

bb.x:                                             ; preds = %.lr.ph.i.i63.1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !38  ; 4 uses
  %.not.i.i69.1 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i69.1, label %.thread150, label %.lr.ph.i.i63.2

.lr.ph.i.i63.2:                                   ; preds = %bb.x
  %i.cr = add i8 %i.cq, -65
  %or.cond.i.i.i66.2 = icmp ult i8 %i.cr, 26
  %i.cs = add nuw nsw i8 %i.cq, 32
  %i.ct = select i1 %or.cond.i.i.i66.2, i8 %i.cs, i8 %i.cq
  %.not14.i.i68.2 = icmp eq i8 %i.ct, 114
  br i1 %.not14.i.i68.2, label %bb.y, label %.thread150

bb.y:                                             ; preds = %.lr.ph.i.i63.2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 3
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !38  ; 4 uses
  %.not.i.i69.2 = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i69.2, label %.thread150, label %.lr.ph.i.i63.3

.lr.ph.i.i63.3:                                   ; preds = %bb.y
  %i.cw = add i8 %i.cv, -65
  %or.cond.i.i.i66.3 = icmp ult i8 %i.cw, 26
  %i.cx = add nuw nsw i8 %i.cv, 32
  %i.cy = select i1 %or.cond.i.i.i66.3, i8 %i.cx, i8 %i.cv
  %.not14.i.i68.3 = icmp eq i8 %i.cy, 116
  br i1 %.not14.i.i68.3, label %bb.z, label %.thread150

bb.z:                                             ; preds = %.lr.ph.i.i63.3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !38  ; 4 uses
  %.not.i.i69.3 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i69.3, label %.thread150, label %.lr.ph.i.i63.4

.lr.ph.i.i63.4:                                   ; preds = %bb.z
  %i.db = add i8 %i.da, -65
  %or.cond.i.i.i66.4 = icmp ult i8 %i.db, 26
  %i.dc = add nuw nsw i8 %i.da, 32
  %i.dd = select i1 %or.cond.i.i.i66.4, i8 %i.dc, i8 %i.da
  %.not14.i.i68.4 = icmp eq i8 %i.dd, 104
  br i1 %.not14.i.i68.4, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread9.i, label %.thread150

_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread9.i: ; preds = %.lr.ph.i.i63.4
  %i.de = load i64, ptr %i.b, align 8, !tbaa !41  ; 4 uses
  %i.df = add i64 %i.de, 1                        ; 3 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.a
  br i1 %i.dh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread9.i
  %i.di = icmp ult i64 %i.de, 16
  tail call void @llvm.assume(i1 %i.di)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread9.i
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.dk = phi i64 [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.dl = icmp ugt i64 %i.df, %i.dk
  br i1 %i.dl, label %bb.aa, label %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_1clEcPKcRmSD_RS8_.exit"

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.de, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.aa
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !37
  br label %"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_1clEcPKcRmSD_RS8_.exit"

"_ZZN5osgeo4proj8metadata10Identifier16canonicalizeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbENK3$_1clEcPKcRmSD_RS8_.exit": ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.dm = phi ptr [ %.pre.i.i, %.noexc ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.de
  store i8 110, ptr %i.dn, align 1, !tbaa !38
  store i64 %i.df, ptr %i.b, align 8, !tbaa !41
  %i.do = load ptr, ptr %0, align 8, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.df
  store i8 0, ptr %i.dp, align 1, !tbaa !38
  %i.dq = add i64 %storemerge168, 4
  br label %.thread145

bb.ab:                                            ; preds = %bb.k
  %.not.i76 = icmp eq i64 %storemerge168, 0
  br i1 %.not.i76, label %.thread150, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr i8, ptr %i.c, i64 %storemerge168 ; 5 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !38  ; 2 uses
  switch i8 %i.dt, label %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i96.a [
    i8 95, label %.lr.ph.i.i79.preheader
    i8 47, label %.lr.ph.i.i79.preheader
    i8 46, label %.lr.ph.i.i79.preheader
    i8 45, label %.lr.ph.i.i79.preheader
    i8 41, label %.lr.ph.i.i79.preheader
    i8 40, label %.lr.ph.i.i79.preheader
    i8 38, label %.lr.ph.i.i79.preheader
    i8 32, label %.lr.ph.i.i79.preheader
    i8 44, label %.lr.ph.i.i79.preheader
  ]

_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i96.a: ; preds = %bb.ac
  %i.du = add i8 %i.dt, -48
  %i.dv = icmp ult i8 %i.du, 10
  br i1 %i.dv, label %.lr.ph.i.i79.preheader, label %.thread150

.lr.ph.i.i79.preheader:                           ; preds = %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i96.a, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !38  ; 4 uses
  %.not.i.i85 = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i85, label %.thread150, label %.lr.ph.i.i79.1

.lr.ph.i.i79.1:                                   ; preds = %.lr.ph.i.i79.preheader
  %i.dy = add i8 %i.dx, -65
  %or.cond.i.i.i82.1 = icmp ult i8 %i.dy, 26
  %i.dz = add nuw nsw i8 %i.dx, 32
  %i.ea = select i1 %or.cond.i.i.i82.1, i8 %i.dz, i8 %i.dx
  %.not14.i.i84.1 = icmp eq i8 %i.ea, 111
  br i1 %.not14.i.i84.1, label %bb.ad, label %.thread150

bb.ad:                                            ; preds = %.lr.ph.i.i79.1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !38  ; 4 uses
  %.not.i.i85.1 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i85.1, label %.thread150, label %.lr.ph.i.i79.2

.lr.ph.i.i79.2:                                   ; preds = %bb.ad
  %i.ed = add i8 %i.ec, -65
  %or.cond.i.i.i82.2 = icmp ult i8 %i.ed, 26
  %i.ee = add nuw nsw i8 %i.ec, 32
  %i.ef = select i1 %or.cond.i.i.i82.2, i8 %i.ee, i8 %i.ec
  %.not14.i.i84.2 = icmp eq i8 %i.ef, 117
  br i1 %.not14.i.i84.2, label %bb.ae, label %.thread150

bb.ae:                                            ; preds = %.lr.ph.i.i79.2
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !38  ; 4 uses
  %.not.i.i85.2 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i85.2, label %.thread150, label %.lr.ph.i.i79.3

.lr.ph.i.i79.3:                                   ; preds = %bb.ae
  %i.ei = add i8 %i.eh, -65
  %or.cond.i.i.i82.3 = icmp ult i8 %i.ei, 26
  %i.ej = add nuw nsw i8 %i.eh, 32
  %i.ek = select i1 %or.cond.i.i.i82.3, i8 %i.ej, i8 %i.eh
  %.not14.i.i84.3 = icmp eq i8 %i.ek, 116
  br i1 %.not14.i.i84.3, label %bb.af, label %.thread150

bb.af:                                            ; preds = %.lr.ph.i.i79.3
  %i.el = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.em = load i8, ptr %i.el, align 1, !tbaa !38  ; 4 uses
  %.not.i.i85.3 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i85.3, label %.thread150, label %.lr.ph.i.i79.4

.lr.ph.i.i79.4:                                   ; preds = %bb.af
  %i.en = add i8 %i.em, -65
  %or.cond.i.i.i82.4 = icmp ult i8 %i.en, 26
  %i.eo = add nuw nsw i8 %i.em, 32
  %i.ep = select i1 %or.cond.i.i.i82.4, i8 %i.eo, i8 %i.em
  %.not14.i.i84.4 = icmp eq i8 %i.ep, 104
  br i1 %.not14.i.i84.4, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread9.i90, label %.thread150

_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread9.i90: ; preds = %.lr.ph.i.i79.4
  %i.eq = load i64, ptr %i.b, align 8, !tbaa !41  ; 4 uses
  %i.er = add i64 %i.eq, 1                        ; 3 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.a
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i95: ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread9.i90
  %i.eu = icmp ult i64 %i.eq, 16
  tail call void @llvm.assume(i1 %i.eu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91: ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread9.i90
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i95
  %i.ew = phi i64 [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i95 ]
  %i.ex = icmp ugt i64 %i.er, %i.ew
  br i1 %i.ex, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eq, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.ag
  %.pre.i.i94 = load ptr, ptr %0, align 8, !tbaa !37
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92
  %i.ey = phi ptr [ %.pre.i.i94, %.noexc97 ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq
  store i8 115, ptr %i.ez, align 1, !tbaa !38
  store i64 %i.er, ptr %i.b, align 8, !tbaa !41
  %i.fa = load ptr, ptr %0, align 8, !tbaa !37
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.er
  store i8 0, ptr %i.fb, align 1, !tbaa !38
  %i.fc = add i64 %storemerge168, 4
  br label %.thread145

.loopexit:                                        ; preds = %bb.k, %bb.j
  %i.fd = icmp slt i8 %i.i, 0
  br i1 %i.fd, label %bb.ai, label %.thread150

bb.ai:                                            ; preds = %.loopexit
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 %storemerge168
  %i.ff = tail call fastcc noundef ptr @_ZN5osgeo4proj8metadataL21get_ascii_replacementEPKc(ptr noundef nonnull %i.fe) ; 3 uses
  %.not40 = icmp eq ptr %i.ff, null
  br i1 %.not40, label %.thread150, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !153
  %i.fi = load i64, ptr %i.b, align 8, !tbaa !41  ; 4 uses
  %i.fj = add i64 %i.fi, 1                        ; 3 uses
  %i.fk = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.a
  br i1 %i.fl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.aj
  %i.fm = icmp ult i64 %i.fi, 16
  tail call void @llvm.assume(i1 %i.fm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  %i.fn = load i64, ptr %i.a, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.fo = phi i64 [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.fp = icmp ugt i64 %i.fj, %i.fo
  br i1 %i.fp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fi, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %bb.ak
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !37
  br label %bb.al

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %bb.ag, %bb.aw, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.av
  %lpad.loopexit.split-lp206 = landingpad { ptr, i32 }
          cleanup
  %i.fq = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.a
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc99
  %i.fs = phi ptr [ %.pre.i, %.noexc99 ], [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fi
  store i8 %i.fh, ptr %i.ft, align 1, !tbaa !38
  store i64 %i.fj, ptr %i.b, align 8, !tbaa !41
  %i.fu = load ptr, ptr %0, align 8, !tbaa !37
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fj
  store i8 0, ptr %i.fv, align 1, !tbaa !38
  %i.fw = load ptr, ptr %i.ff, align 8, !tbaa !154
  %i.fx = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fw) #39
  %i.fy = add i64 %storemerge168, -1
  %i.fz = add i64 %i.fy, %i.fx
  br label %.thread145

.thread150:                                       ; preds = %bb.af, %bb.ae, %bb.ad, %.lr.ph.i.i79.preheader, %bb.z, %bb.y, %bb.x, %.lr.ph.i.i63.preheader, %bb.u, %bb.t, %bb.s, %bb.r, %.lr.ph.i.i46.preheader.a, %bb.o, %bb.n, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i46.1, %.lr.ph.i.i46.2, %.lr.ph.i.i46.3, %.lr.ph.i.i46.4, %.lr.ph.i.i46.5, %.lr.ph.i.i63.1, %.lr.ph.i.i63.2, %.lr.ph.i.i63.3, %.lr.ph.i.i63.4, %.lr.ph.i.i79.4, %.lr.ph.i.i79.3, %.lr.ph.i.i79.2, %.lr.ph.i.i79.1, %bb.m, %bb.l, %bb.q, %bb.p, %bb.ai, %bb.v, %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i.a, %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit.i96.a, %bb.ab, %.loopexit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 %storemerge168 ; 10 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !38  ; 4 uses
  %.not17.i = icmp eq i8 %i.gb, 0
  br i1 %.not17.i, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.thread150
  %i.gc = add i8 %i.gb, -65
  %or.cond.i.i = icmp ult i8 %i.gc, 26
  %i.gd = add nuw nsw i8 %i.gb, 32
  %i.ge = select i1 %or.cond.i.i, i8 %i.gd, i8 %i.gb
  %.not14.i = icmp eq i8 %i.ge, 95
  br i1 %.not14.i, label %bb.am, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.am:                                            ; preds = %.lr.ph.i.preheader
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !38  ; 4 uses
  %.not.i100 = icmp eq i8 %i.gg, 0
  br i1 %.not.i100, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.am
  %i.gh = add i8 %i.gg, -65
  %or.cond.i.i.1 = icmp ult i8 %i.gh, 26
  %i.gi = add nuw nsw i8 %i.gg, 32
  %i.gj = select i1 %or.cond.i.i.1, i8 %i.gi, i8 %i.gg
  %.not14.i.1 = icmp eq i8 %i.gj, 105
  br i1 %.not14.i.1, label %bb.an, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.an:                                            ; preds = %.lr.ph.i.1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !38  ; 4 uses
  %.not.i100.1 = icmp eq i8 %i.gl, 0
  br i1 %.not.i100.1, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.an
  %i.gm = add i8 %i.gl, -65
  %or.cond.i.i.2 = icmp ult i8 %i.gm, 26
  %i.gn = add nuw nsw i8 %i.gl, 32
  %i.go = select i1 %or.cond.i.i.2, i8 %i.gn, i8 %i.gl
  %.not14.i.2 = icmp eq i8 %i.go, 110
  br i1 %.not14.i.2, label %bb.ao, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.ao:                                            ; preds = %.lr.ph.i.2
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ga, i64 3
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !38  ; 4 uses
  %.not.i100.2 = icmp eq i8 %i.gq, 0
  br i1 %.not.i100.2, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.ao
  %i.gr = add i8 %i.gq, -65
  %or.cond.i.i.3 = icmp ult i8 %i.gr, 26
  %i.gs = add nuw nsw i8 %i.gq, 32
  %i.gt = select i1 %or.cond.i.i.3, i8 %i.gs, i8 %i.gq
  %.not14.i.3 = icmp eq i8 %i.gt, 116
  br i1 %.not14.i.3, label %bb.ap, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.ap:                                            ; preds = %.lr.ph.i.3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !38  ; 4 uses
  %.not.i100.3 = icmp eq i8 %i.gv, 0
  br i1 %.not.i100.3, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.ap
  %i.gw = add i8 %i.gv, -65
  %or.cond.i.i.4 = icmp ult i8 %i.gw, 26
  %i.gx = add nuw nsw i8 %i.gv, 32
  %i.gy = select i1 %or.cond.i.i.4, i8 %i.gx, i8 %i.gv
  %.not14.i.4 = icmp eq i8 %i.gy, 108
  br i1 %.not14.i.4, label %bb.aq, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.aq:                                            ; preds = %.lr.ph.i.4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ga, i64 5
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !38  ; 4 uses
  %.not.i100.4 = icmp eq i8 %i.ha, 0
  br i1 %.not.i100.4, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.aq
  %i.hb = add i8 %i.ha, -65
  %or.cond.i.i.5 = icmp ult i8 %i.hb, 26
  %i.hc = add nuw nsw i8 %i.ha, 32
  %i.hd = select i1 %or.cond.i.i.5, i8 %i.hc, i8 %i.ha
  %.not14.i.5 = icmp eq i8 %i.hd, 102
  br i1 %.not14.i.5, label %bb.ar, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.ar:                                            ; preds = %.lr.ph.i.5
  %i.he = getelementptr inbounds nuw i8, ptr %i.ga, i64 6
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !38  ; 4 uses
  %.not.i100.5 = icmp eq i8 %i.hf, 0
  br i1 %.not.i100.5, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.ar
  %i.hg = add i8 %i.hf, -65
  %or.cond.i.i.6 = icmp ult i8 %i.hg, 26
  %i.hh = add nuw nsw i8 %i.hf, 32
  %i.hi = select i1 %or.cond.i.i.6, i8 %i.hh, i8 %i.hf
  %.not14.i.6 = icmp eq i8 %i.hi, 101
  br i1 %.not14.i.6, label %bb.as, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.as:                                            ; preds = %.lr.ph.i.6
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ga, i64 7
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !38  ; 4 uses
  %.not.i100.6 = icmp eq i8 %i.hk, 0
  br i1 %.not.i100.6, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.as
  %i.hl = add i8 %i.hk, -65
  %or.cond.i.i.7 = icmp ult i8 %i.hl, 26
  %i.hm = add nuw nsw i8 %i.hk, 32
  %i.hn = select i1 %or.cond.i.i.7, i8 %i.hm, i8 %i.hk
  %.not14.i.7 = icmp eq i8 %i.hn, 101
  br i1 %.not14.i.7, label %bb.at, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.at:                                            ; preds = %.lr.ph.i.7
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !38  ; 4 uses
  %.not.i100.7 = icmp eq i8 %i.hp, 0
  br i1 %.not.i100.7, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread, label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %bb.at
  %i.hq = add i8 %i.hp, -65
  %or.cond.i.i.8 = icmp ult i8 %i.hq, 26
  %i.hr = add nuw nsw i8 %i.hp, 32
  %i.hs = select i1 %or.cond.i.i.8, i8 %i.hr, i8 %i.hp
  %.not14.i.8 = icmp eq i8 %i.hs, 116
  br i1 %.not14.i.8, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit: ; preds = %.lr.ph.i.8
  %i.ht = getelementptr i8, ptr %i.ga, i64 9
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !38
  %i.hv = icmp eq i8 %i.hu, 0
  br i1 %i.hv, label %bb.au, label %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread

bb.au:                                            ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit
  %i.hw = load i64, ptr %i.b, align 8, !tbaa !41
  %i.hx = and i64 %i.hw, -4
  %i.hy = icmp eq i64 %i.hx, 4611686018427387900
  br i1 %i.hy, label %bb.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #38
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %bb.av
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.au
  %i.hz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.13, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread: ; preds = %bb.at, %bb.ap, %bb.ar, %bb.ao, %bb.an, %bb.aq, %bb.as, %bb.am, %.thread150, %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %.lr.ph.i.8, %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit
  switch i8 %i.i, label %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit [
    i8 95, label %.thread145
    i8 47, label %.thread145
    i8 46, label %.thread145
    i8 45, label %.thread145
    i8 41, label %.thread145
    i8 40, label %.thread145
    i8 38, label %.thread145
    i8 32, label %.thread145
    i8 44, label %.thread145
  ]

_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit:   ; preds = %_ZN5osgeo4proj8metadataL16matchesLowerCaseEPKcS3_.exit.thread
  %i.ia = load i64, ptr %i.b, align 8, !tbaa !41  ; 4 uses
  %i.ib = add i64 %i.ia, 1                        ; 3 uses
  %i.ic = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.a
  br i1 %i.id, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106: ; preds = %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit
  %i.ie = icmp ult i64 %i.ia, 16
  tail call void @llvm.assume(i1 %i.ie)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZN5osgeo4proj8metadataL13isIgnoredCharEc.exit
  %i.if = load i64, ptr %i.a, align 8, !tbaa !38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106
  %i.ig = phi i64 [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i106 ]
  %i.ih = icmp ugt i64 %i.ib, %i.ig
  br i1 %i.ih, label %bb.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ia, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc107:                                        ; preds = %bb.aw
  %.pre.i105 = load ptr, ptr %0, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit108: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104, %.noexc107
  %i.ii = phi ptr [ %.pre.i105, %.noexc107 ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i104 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ia
  store i8 %i.i, ptr %i.ij, align 1, !tbaa !38
  store i64 %i.ib, ptr %i.b, align 8, !tbaa !41
  %i.ik = load ptr, ptr %0, align 8, !tbaa !37
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ib
  store i8 0, ptr %i.il, align 1, !tbaa !38
  br label %.thread145

end_hunk_0
