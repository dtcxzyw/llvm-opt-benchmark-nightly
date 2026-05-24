inline.NumInlined: 5334
inline.NumDeleted: 1210
begin_hunk_0_@_ZN2PP11PowerParser7get_intIiEEvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_RKSt6vectorIiSaIiEEb:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z, %.noexc.i.i62, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit59
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %bb.i, !llvm.loop !131

bb.ac:                                            ; preds = %bb.j
  %i.fk = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fk, ptr %8, align 8, !tbaa !132
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.fm = getelementptr i8, ptr %i.fk, i64 -24
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds i8, ptr %8, i64 %i.fn
  store ptr %i.fl, ptr %i.fo, align 8, !tbaa !132
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !132
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fr, align 8, !tbaa !132
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !27 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !33
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fr, align 8, !tbaa !132
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fy) #30
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.fz, ptr %8, align 8, !tbaa !132
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gb = getelementptr i8, ptr %i.fz, i64 -24
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds i8, ptr %8, i64 %i.gc
  store ptr %i.ga, ptr %i.gd, align 8, !tbaa !132
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ge, align 8, !tbaa !134
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gf) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.gg = load ptr, ptr %7, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !17
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gl) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.gm = load ptr, ptr %6, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIPN2PP3CmdESaIS2_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !23
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = ptrtoint ptr %i.gm to i64
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gr) #33
  br label %_ZNSt6vectorIPN2PP3CmdESaIS2_EED2Ev.exit

_ZNSt6vectorIPN2PP3CmdESaIS2_EED2Ev.exit:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.gs = load ptr, ptr %5, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i66 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIiSaIiEED2Ev.exit67, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPN2PP3CmdESaIS2_EED2Ev.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !17
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gs to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.gx) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit67

_ZNSt6vectorIiSaIiEED2Ev.exit67:                  ; preds = %_ZNSt6vectorIPN2PP3CmdESaIS2_EED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.ag:                                            ; preds = %bb.aa, %bb.ab, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.be, %bb.h ], [ %i.fj, %bb.ab ], [ %i.fi, %bb.aa ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #30
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ag ], [ %i.bd, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.gy = load ptr, ptr %7, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIiSaIiEED2Ev.exit69, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !17
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gy to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %i.gy, i64 noundef %i.hd) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit69

_ZNSt6vectorIiSaIiEED2Ev.exit69:                  ; preds = %bb.ai, %bb.ah, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.f ], [ %.pn.pn.pn, %bb.ah ], [ %.pn.pn.pn, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.he = load ptr, ptr %6, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i70 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorIPN2PP3CmdESaIS2_EED2Ev.exit71, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit69
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !23
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hj) #33
  br label %_ZNSt6vectorIPN2PP3CmdESaIS2_EED2Ev.exit71

_ZNSt6vectorIPN2PP3CmdESaIS2_EED2Ev.exit71:       ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEED2Ev.exit69, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.e ], [ %.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit69 ], [ %.pn.pn.pn.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.hk = load ptr, ptr %5, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i72 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i72, label %_ZNSt6vectorIiSaIiEED2Ev.exit73, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIPN2PP3CmdESaIS2_EED2Ev.exit71
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !17
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit73

_ZNSt6vectorIiSaIiEED2Ev.exit73:                  ; preds = %bb.ak, %_ZNSt6vectorIPN2PP3CmdESaIS2_EED2Ev.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #2

declare void @_ZN2PP3Cmd7get_intERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPiRKSt6vectorIiSaIiEERS9_IPS0_SaISE_EERSB_iSI_bRNS1_18basic_stringstreamIcS4_S5_EERi(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser13process_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !4      ; 2 uses
  switch i32 %i.a, label %._crit_edge.i.i [
    i32 0, label %bb.ab
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1880
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !123, !alias.scope !141
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !32, !alias.scope !141
  store i8 0, ptr %i.c, align 8, !tbaa !33, !alias.scope !141
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %6 = load ptr, ptr %i.e, align 8, !tbaa !142, !noalias !141 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %6, null
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %7, align 8, !noalias !141 ; 2 uses
  %8 = icmp ugt ptr %6, %i.f
  %.08.i.i.i = select i1 %8, ptr %6, ptr %i.f     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143, !noalias !141 ; 2 uses
  %i.i = ptrtoint ptr %.08.i.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.h, i64 noundef %i.k)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !27, !alias.scope !141 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.c, align 8, !tbaa !33, !alias.scope !141
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.m, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.c, %bb.e
  %i.s = load ptr, ptr %3, align 8, !tbaa !27
  %i.t = load i64, ptr %i.d, align 8, !tbaa !32
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.s, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !27     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.x = load i64, ptr %i.c, align 8, !tbaa !33
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.z = load i32, ptr %2, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2256
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !144
  br label %bb.ab

bb.f:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.f
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !33
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !123
  store i64 8315736636066521431, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 8, ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.ai, align 8, !tbaa !33
  %i.aj = icmp eq i32 %i.a, 2
  br i1 %i.aj, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @.str.205, i64 noundef 12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %.invoke113, %.invoke, %.noexc82, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i77, %.noexc80.a, %bb.o, %.noexc71, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i66, %.noexc69.a, %bb.m, %.noexc61, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc59.a, %bb.k, %_ZNSolsEPFRSoS_E.exit29, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26, %_ZNSolsEPFRSoS_E.exit, %bb.g, %bb.y
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.g, %._crit_edge.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !145 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !146
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !148
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.i, label %bb.w

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.at = load ptr, ptr @_ZSt4cout, align 8, !tbaa !132
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 240
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !161
  %.not.i1.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 67
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ay)
          to label %.noexc59.a unwind label %bb.h

.noexc59.a:                                       ; preds = %bb.k
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !132
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke noundef signext i8 %i.bf(ptr noundef nonnull align 8 dereferenceable(570) %i.ay, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.h, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc59.a, %bb.j
  %.0.i.i.i = phi i8 [ %i.bc, %bb.j ], [ %i.bg, %.noexc59.a ]
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
          to label %.noexc61 unwind label %bb.h

.noexc61:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.h ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc61
  %i.bj = load ptr, ptr %4, align 8, !tbaa !27
  %i.bk = load i64, ptr %i.ah, align 8, !tbaa !32
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bj, i64 noundef %i.bk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26 unwind label %bb.h ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.206, i64 noundef 57)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !132
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 240
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i63 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i63, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !161
  %.not.i1.i.i65 = icmp eq i8 %i.bu, 0
  br i1 %.not.i1.i.i65, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 67
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i66

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bs)
          to label %.noexc69.a unwind label %bb.h

.noexc69.a:                                       ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !132
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef signext i8 %i.bz(ptr noundef nonnull align 8 dereferenceable(570) %i.bs, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i66 unwind label %bb.h, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i66: ; preds = %.noexc69.a, %bb.l
  %.0.i.i.i67 = phi i8 [ %i.bw, %bb.l ], [ %i.ca, %.noexc69.a ]
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i8 noundef signext %.0.i.i.i67)
          to label %.noexc71 unwind label %bb.h

.noexc71:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i66
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %_ZNSolsEPFRSoS_E.exit29 unwind label %bb.h ; 0 uses

_ZNSolsEPFRSoS_E.exit29:                          ; preds = %.noexc71
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.207, i64 noundef 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %_ZNSolsEPFRSoS_E.exit29
  %i.ce = load ptr, ptr @_ZSt4cout, align 8, !tbaa !132
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 240
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i74 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i74, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !161
  %.not.i1.i.i76 = icmp eq i8 %i.cl, 0
  br i1 %.not.i1.i.i76, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 67
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i77

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cj)
          to label %.noexc80.a unwind label %bb.h

.noexc80.a:                                       ; preds = %bb.o
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !132
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke noundef signext i8 %i.cq(ptr noundef nonnull align 8 dereferenceable(570) %i.cj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i77 unwind label %bb.h, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i77: ; preds = %.noexc80.a, %bb.n
  %.0.i.i.i78 = phi i8 [ %i.cn, %bb.n ], [ %i.cr, %.noexc80.a ]
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i78)
          to label %.noexc82 unwind label %bb.h

.noexc82:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i77
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %_ZNSolsEPFRSoS_E.exit33 unwind label %bb.h ; 0 uses

_ZNSolsEPFRSoS_E.exit33:                          ; preds = %.noexc82
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.cu, ptr %5, align 8, !tbaa !123, !alias.scope !173
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.cv, align 8, !tbaa !32, !alias.scope !173
  store i8 0, ptr %i.cu, align 8, !tbaa !33, !alias.scope !173
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %9 = load ptr, ptr %i.cw, align 8, !tbaa !142, !noalias !173 ; 3 uses
  %.not.i.not.i.i34 = icmp eq ptr %9, null
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cx = load ptr, ptr %10, align 8, !noalias !173 ; 2 uses
  %11 = icmp ugt ptr %9, %i.cx
  %.08.i.i.i35 = select i1 %11, ptr %9, ptr %i.cx ; 2 uses
  %.not5.i.i36 = icmp eq ptr %.08.i.i.i35, null
  %.not.i.i37 = select i1 %.not.i.not.i.i34, i1 true, i1 %.not5.i.i36
  br i1 %.not.i.i37, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZNSolsEPFRSoS_E.exit33
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !143, !noalias !173 ; 2 uses
  %i.da = ptrtoint ptr %.08.i.i.i35 to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.cz, i64 noundef %i.dc)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit41 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %5, align 8, !tbaa !27, !alias.scope !173 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cu
  br i1 %i.dg, label %.body, label %.body.sink.split

bb.r:                                             ; preds = %_ZNSolsEPFRSoS_E.exit33
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.dh)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit41 unwind label %bb.q

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit41: ; preds = %bb.r, %bb.p
  %i.di = load ptr, ptr %5, align 8, !tbaa !27
  %i.dj = load i64, ptr %i.cv, align 8, !tbaa !32
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.di, i64 noundef %i.dj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit43 unwind label %bb.v ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit43: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit41
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !132
  %i.dm = getelementptr i8, ptr %i.dl, i64 -24
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 240
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i85 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i85, label %bb.s, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit43
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc90 unwind label %bb.v

.noexc90:                                         ; preds = %bb.s
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit43
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !161
  %.not.i1.i.i87 = icmp eq i8 %i.ds, 0
  br i1 %.not.i1.i.i87, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 67
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i88

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dq)
          to label %.noexc91.a unwind label %bb.v

.noexc91.a:                                       ; preds = %bb.u
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !132
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = invoke noundef signext i8 %i.dx(ptr noundef nonnull align 8 dereferenceable(570) %i.dq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i88 unwind label %bb.v, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i88: ; preds = %.noexc91.a, %bb.t
  %.0.i.i.i89 = phi i8 [ %i.du, %bb.t ], [ %i.dy, %.noexc91.a ]
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i8 noundef signext %.0.i.i.i89)
          to label %.noexc93 unwind label %bb.v

.noexc93:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i88
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dz)
          to label %_ZNSolsEPFRSoS_E.exit45 unwind label %bb.v ; 0 uses

_ZNSolsEPFRSoS_E.exit45:                          ; preds = %.noexc93
  %i.eb = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cu
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSolsEPFRSoS_E.exit45
  %i.ed = load i64, ptr %i.cu, align 8, !tbaa !33
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSolsEPFRSoS_E.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ef = call i32 @fflush(ptr noundef null)      ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %.noexc93, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i88, %.noexc91.a, %bb.u, %bb.s, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit41
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.cu
  br i1 %i.ei, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.v, %bb.q
  %.sink = phi ptr [ %i.df, %bb.q ], [ %i.eh, %bb.v ]
  %.pn.ph = phi { ptr, i32 } [ %i.de, %bb.q ], [ %i.eg, %bb.v ]
  %i.ej = load i64, ptr %i.cu, align 8, !tbaa !33
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ek) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.v, %bb.q
  %.pn = phi { ptr, i32 } [ %i.de, %bb.q ], [ %i.eg, %bb.v ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ac

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.el = load i32, ptr %2, align 4, !tbaa !4
  %i.em = icmp eq i32 %i.el, 2
  br i1 %i.em, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %i.am, align 8, !tbaa !145 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !146
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !148
  %i.es = icmp eq i32 %i.ep, %i.er
  br i1 %i.es, label %.invoke113, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.et = invoke i32 @sleep(i32 noundef 2)
          to label %bb.z unwind label %bb.h       ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.eu = load ptr, ptr %i.am, align 8, !tbaa !145
  br label %.invoke113

.invoke113:                                       ; preds = %bb.x, %bb.z
  %i.ev = phi ptr [ %i.eu, %bb.z ], [ %i.en, %bb.x ]
  invoke void @_ZN2PP4Comm19global_abort_parserEv(ptr noundef nonnull align 4 dereferenceable(16) %i.ev)
          to label %bb.aa unwind label %bb.h

bb.aa:                                            ; preds = %.invoke113, %bb.w
  %i.ew = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ag
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.aa
  %i.ey = load i64, ptr %i.ag, align 8, !tbaa !33
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.ac:                                            ; preds = %.body, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.al, %bb.h ], [ %.pn, %.body ]
  %i.fa = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ag
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.ac
  %i.fc = load i64, ptr %i.ag, align 8, !tbaa !33
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN2PP11PowerParser7get_intIlEEvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPT_RKSt6vectorIiSaIiEEb(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 13 uses
  %6 = alloca %"class.std::vector.0", align 8     ; 13 uses
  %7 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 18 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = load ptr, ptr %3, align 8, !tbaa !12     ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 2                   ; 3 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  br label %.noexc43
end_hunk_0
begin_hunk_1_@_ZN2PP11PowerParser12parse_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_:._crit_edge.i.i
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit: ; preds = %bb.ek, %bb.en
  %storemerge.i.i.i.i = phi ptr [ %i.afc, %bb.en ], [ %i.aeu, %bb.ek ] ; 2 uses
  %i.afd = load ptr, ptr %storemerge.i.i.i.i, align 8, !tbaa !27
  %i.afe = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 8
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !32
  %i.afg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.afd, i64 noundef %i.aff)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit517 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !132
  %i.afi = getelementptr i8, ptr %i.afh, i64 -24
  %i.afj = load i64, ptr %i.afi, align 8
  %i.afk = getelementptr inbounds i8, ptr %i.afg, i64 %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 240
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i435 = icmp eq ptr %i.afm, null
  br i1 %.not.i.i.i435, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i436

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i436: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 56
  %i.afo = load i8, ptr %i.afn, align 8, !tbaa !161
  %.not.i1.i.i437 = icmp eq i8 %i.afo, 0
  br i1 %.not.i1.i.i437, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i436
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afm, i64 67
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i438

bb.ep:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i436
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.afm)
          to label %.noexc441 unwind label %.loopexit517

.noexc441:                                        ; preds = %bb.ep
  %i.afr = load ptr, ptr %i.afm, align 8, !tbaa !132
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 48
  %i.aft = load ptr, ptr %i.afs, align 8
  %i.afu = invoke noundef signext i8 %i.aft(ptr noundef nonnull align 8 dereferenceable(570) %i.afm, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i438 unwind label %.loopexit517, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i438: ; preds = %.noexc441, %bb.eo
  %.0.i.i.i439 = phi i8 [ %i.afq, %bb.eo ], [ %i.afu, %.noexc441 ]
  %i.afv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.afg, i8 noundef signext %.0.i.i.i439)
          to label %.noexc443 unwind label %.loopexit517

.noexc443:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i438
  %i.afw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afv)
          to label %_ZNSolsEPFRSoS_E.exit304 unwind label %.loopexit517 ; 0 uses

_ZNSolsEPFRSoS_E.exit304:                         ; preds = %.noexc443
  %i.afx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.14, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306 unwind label %.loopexit517 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306: ; preds = %_ZNSolsEPFRSoS_E.exit304
  %i.afy = load ptr, ptr %1, align 8, !tbaa !27
  %i.afz = load i64, ptr %i.bb, align 8, !tbaa !32
  %i.aga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.afy, i64 noundef %i.afz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit308 unwind label %.loopexit517 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit308: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !132
  %i.agc = getelementptr i8, ptr %i.agb, i64 -24
  %i.agd = load i64, ptr %i.agc, align 8
  %i.age = getelementptr inbounds i8, ptr %i.aga, i64 %i.agd
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 240
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i446 = icmp eq ptr %i.agg, null
  br i1 %.not.i.i.i446, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i447

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i447: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit308
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 56
  %i.agi = load i8, ptr %i.agh, align 8, !tbaa !161
  %.not.i1.i.i448 = icmp eq i8 %i.agi, 0
  br i1 %.not.i1.i.i448, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i447
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agg, i64 67
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i449

bb.er:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i447
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.agg)
          to label %.noexc452 unwind label %.loopexit517

.noexc452:                                        ; preds = %bb.er
  %i.agl = load ptr, ptr %i.agg, align 8, !tbaa !132
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 48
  %i.agn = load ptr, ptr %i.agm, align 8
  %i.ago = invoke noundef signext i8 %i.agn(ptr noundef nonnull align 8 dereferenceable(570) %i.agg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i449 unwind label %.loopexit517, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i449: ; preds = %.noexc452, %bb.eq
  %.0.i.i.i450 = phi i8 [ %i.agk, %bb.eq ], [ %i.ago, %.noexc452 ]
  %i.agp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aga, i8 noundef signext %.0.i.i.i450)
          to label %.noexc454 unwind label %.loopexit517

.noexc454:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i449
  %i.agq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.agp)
          to label %_ZNSolsEPFRSoS_E.exit310 unwind label %.loopexit517 ; 0 uses

_ZNSolsEPFRSoS_E.exit310:                         ; preds = %.noexc454
  %i.agr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.15, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312 unwind label %.loopexit517 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312: ; preds = %_ZNSolsEPFRSoS_E.exit310
  %i.ags = load ptr, ptr %i.dc, align 8, !tbaa !132
  %i.agt = getelementptr i8, ptr %i.ags, i64 -24
  %i.agu = load i64, ptr %i.agt, align 8
  %i.agv = getelementptr inbounds i8, ptr %i.dc, i64 %i.agu
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 240
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i457 = icmp eq ptr %i.agx, null
  br i1 %.not.i.i.i457, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i458

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i458: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 56
  %i.agz = load i8, ptr %i.agy, align 8, !tbaa !161
  %.not.i1.i.i459 = icmp eq i8 %i.agz, 0
  br i1 %.not.i1.i.i459, label %bb.et, label %bb.es

bb.es:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i458
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agx, i64 67
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i460

bb.et:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i458
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.agx)
          to label %.noexc463 unwind label %.loopexit517

.noexc463:                                        ; preds = %bb.et
  %i.ahc = load ptr, ptr %i.agx, align 8, !tbaa !132
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 48
  %i.ahe = load ptr, ptr %i.ahd, align 8
  %i.ahf = invoke noundef signext i8 %i.ahe(ptr noundef nonnull align 8 dereferenceable(570) %i.agx, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i460 unwind label %.loopexit517, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i460: ; preds = %.noexc463, %bb.es
  %.0.i.i.i461 = phi i8 [ %i.ahb, %bb.es ], [ %i.ahf, %.noexc463 ]
  %i.ahg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i8 noundef signext %.0.i.i.i461)
          to label %.noexc465 unwind label %.loopexit517

.noexc465:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i460
  %i.ahh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ahg)
          to label %_ZNSolsEPFRSoS_E.exit314 unwind label %.loopexit517 ; 0 uses

_ZNSolsEPFRSoS_E.exit314:                         ; preds = %.noexc465
  %i.ahi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @.str.16, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316 unwind label %.loopexit517 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316: ; preds = %_ZNSolsEPFRSoS_E.exit314
  %i.ahj = load ptr, ptr %i.dc, align 8, !tbaa !132
  %i.ahk = getelementptr i8, ptr %i.ahj, i64 -24
  %i.ahl = load i64, ptr %i.ahk, align 8
  %i.ahm = getelementptr inbounds i8, ptr %i.dc, i64 %i.ahl
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 240
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i468 = icmp eq ptr %i.aho, null
  br i1 %.not.i.i.i468, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i469

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i469: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 56
  %i.ahq = load i8, ptr %i.ahp, align 8, !tbaa !161
  %.not.i1.i.i470 = icmp eq i8 %i.ahq, 0
  br i1 %.not.i1.i.i470, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i469
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.aho, i64 67
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i471

bb.ev:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i469
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aho)
          to label %.noexc474 unwind label %.loopexit517

.noexc474:                                        ; preds = %bb.ev
  %i.aht = load ptr, ptr %i.aho, align 8, !tbaa !132
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 48
  %i.ahv = load ptr, ptr %i.ahu, align 8
  %i.ahw = invoke noundef signext i8 %i.ahv(ptr noundef nonnull align 8 dereferenceable(570) %i.aho, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i471 unwind label %.loopexit517, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i471: ; preds = %.noexc474, %bb.eu
  %.0.i.i.i472 = phi i8 [ %i.ahs, %bb.eu ], [ %i.ahw, %.noexc474 ]
  %i.ahx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i8 noundef signext %.0.i.i.i472)
          to label %.noexc476 unwind label %.loopexit517

.noexc476:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i471
  %i.ahy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ahx)
          to label %_ZNSolsEPFRSoS_E.exit318 unwind label %.loopexit517 ; 0 uses

_ZNSolsEPFRSoS_E.exit318:                         ; preds = %.noexc476
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  store ptr %i.dg, ptr %26, align 8, !tbaa !123, !alias.scope !518
  store i64 0, ptr %i.dh, align 8, !tbaa !32, !alias.scope !518
  store i8 0, ptr %i.dg, align 8, !tbaa !33, !alias.scope !518
  %i.ahz = load ptr, ptr %i.di, align 8, !tbaa !142, !noalias !518 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ahz, null
  %32 = load ptr, ptr %i.dj, align 8, !noalias !518 ; 2 uses
  %33 = icmp ugt ptr %i.ahz, %32
  %.08.i.i.i = select i1 %33, ptr %i.ahz, ptr %32 ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %_ZNSolsEPFRSoS_E.exit318
  %i.aia = load ptr, ptr %i.dk, align 8, !tbaa !143, !noalias !518 ; 2 uses
  %i.aib = ptrtoint ptr %.08.i.i.i to i64
  %i.aic = ptrtoint ptr %i.aia to i64
  %i.aid = sub i64 %i.aib, %i.aic
  %i.aie = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef 0, i64 noundef 0, ptr noundef %i.aia, i64 noundef %i.aid)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ex ; 0 uses

bb.ex:                                            ; preds = %bb.ey, %bb.ew
  %i.aif = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aig = load ptr, ptr %26, align 8, !tbaa !27, !alias.scope !518 ; 2 uses
  %i.aih = icmp eq ptr %i.aig, %i.dg
  br i1 %i.aih, label %.body319, label %.body319.sink.split

bb.ey:                                            ; preds = %_ZNSolsEPFRSoS_E.exit318
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %i.dl)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ex

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ey, %bb.ew
  %i.aii = load ptr, ptr %26, align 8, !tbaa !27
  %i.aij = load i64, ptr %i.dh, align 8, !tbaa !32
  %i.aik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.aii, i64 noundef %i.aij)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit322 unwind label %.loopexit522 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit322: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !132
  %i.aim = getelementptr i8, ptr %i.ail, i64 -24
  %i.ain = load i64, ptr %i.aim, align 8
  %i.aio = getelementptr inbounds i8, ptr %i.aik, i64 %i.ain
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 240
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i479 = icmp eq ptr %i.aiq, null
  br i1 %.not.i.i.i479, label %bb.ez, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i480

bb.ez:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit322
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc484 unwind label %.loopexit.split-lp523

.noexc484:                                        ; preds = %bb.ez
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i480: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit322
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 56
  %i.ais = load i8, ptr %i.air, align 8, !tbaa !161
  %.not.i1.i.i481 = icmp eq i8 %i.ais, 0
  br i1 %.not.i1.i.i481, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i480
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aiq, i64 67
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i482

bb.fb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i480
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aiq)
          to label %.noexc485 unwind label %.loopexit522

.noexc485:                                        ; preds = %bb.fb
  %i.aiv = load ptr, ptr %i.aiq, align 8, !tbaa !132
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 48
  %i.aix = load ptr, ptr %i.aiw, align 8
  %i.aiy = invoke noundef signext i8 %i.aix(ptr noundef nonnull align 8 dereferenceable(570) %i.aiq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i482 unwind label %.loopexit522, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i482: ; preds = %.noexc485, %bb.fa
  %.0.i.i.i483 = phi i8 [ %i.aiu, %bb.fa ], [ %i.aiy, %.noexc485 ]
  %i.aiz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aik, i8 noundef signext %.0.i.i.i483)
          to label %.noexc487 unwind label %.loopexit522

.noexc487:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i482
  %i.aja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aiz)
          to label %_ZNSolsEPFRSoS_E.exit324 unwind label %.loopexit522 ; 0 uses

_ZNSolsEPFRSoS_E.exit324:                         ; preds = %.noexc487
  %i.ajb = load ptr, ptr %26, align 8, !tbaa !27  ; 2 uses
  %i.ajc = icmp eq ptr %i.ajb, %i.dg
  br i1 %i.ajc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %_ZNSolsEPFRSoS_E.exit324
  %i.ajd = load i64, ptr %i.dg, align 8, !tbaa !33
  %i.aje = add i64 %i.ajd, 1
  call void @_ZdlPvm(ptr noundef %i.ajb, i64 noundef %i.aje) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %_ZNSolsEPFRSoS_E.exit324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #30
  store i32 2, ptr %i.r, align 4, !tbaa !4
  invoke void @_ZN2PP11PowerParser13process_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %25, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %bb.fc unwind label %bb.fg

bb.fc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  store ptr %i.dm, ptr %25, align 8, !tbaa !132
  %i.ajf = load i64, ptr %i.do, align 8
  %i.ajg = getelementptr inbounds i8, ptr %25, i64 %i.ajf
  store ptr %i.dn, ptr %i.ajg, align 8, !tbaa !132
  store ptr %i.dp, ptr %i.dc, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dq, align 8, !tbaa !132
  %i.ajh = load ptr, ptr %i.dr, align 8, !tbaa !27 ; 2 uses
  %i.aji = icmp eq ptr %i.ajh, %i.ds
  br i1 %i.aji, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.fc
  %i.ajj = load i64, ptr %i.ds, align 8, !tbaa !33
  %i.ajk = add i64 %i.ajj, 1
  call void @_ZdlPvm(ptr noundef %i.ajh, i64 noundef %i.ajk) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dq, align 8, !tbaa !132
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dt) #30
  store ptr %i.ag, ptr %25, align 8, !tbaa !132
  %i.ajl = load i64, ptr %i.ai, align 8
  %i.ajm = getelementptr inbounds i8, ptr %25, i64 %i.ajl
  store ptr %i.ah, ptr %i.ajm, align 8, !tbaa !132
  store i64 0, ptr %i.du, align 8, !tbaa !134
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dv) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

bb.fd:                                            ; preds = %.noexc.i332, %bb.ec, %.critedge.i
  %i.ajn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

bb.fe:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293.thread
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

.loopexit517:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSolsEPFRSoS_E.exit, %bb.eg, %_ZNSolsEPFRSoS_E.exit299, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit, %_ZNSolsEPFRSoS_E.exit304, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306, %_ZNSolsEPFRSoS_E.exit310, %_ZNSolsEPFRSoS_E.exit314, %bb.ef, %.noexc420, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc422, %bb.ei, %.noexc430, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i427, %.noexc432, %bb.ep, %.noexc441, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i438, %.noexc443, %bb.er, %.noexc452, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i449, %.noexc454, %bb.et, %.noexc463, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i460, %.noexc465, %bb.ev, %.noexc474, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i471, %.noexc476
  %lpad.loopexit519 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

.loopexit.split-lp518:                            ; preds = %.invoke
  %lpad.loopexit.split-lp520 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

.loopexit522:                                     ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.fb, %.noexc485, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i482, %.noexc487
  %lpad.loopexit524 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

.loopexit.split-lp523:                            ; preds = %bb.ez
  %lpad.loopexit.split-lp525 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.ff:                                            ; preds = %.loopexit.split-lp523, %.loopexit522
  %lpad.phi526 = phi { ptr, i32 } [ %lpad.loopexit524, %.loopexit522 ], [ %lpad.loopexit.split-lp525, %.loopexit.split-lp523 ] ; 2 uses
  %i.ajp = load ptr, ptr %26, align 8, !tbaa !27  ; 2 uses
  %i.ajq = icmp eq ptr %i.ajp, %i.dg
  br i1 %i.ajq, label %.body319, label %.body319.sink.split

.body319.sink.split:                              ; preds = %bb.ff, %bb.ex
  %.sink = phi ptr [ %i.aig, %bb.ex ], [ %i.ajp, %bb.ff ]
  %.pn87.ph = phi { ptr, i32 } [ %i.aif, %bb.ex ], [ %lpad.phi526, %bb.ff ]
  %i.ajr = load i64, ptr %i.dg, align 8, !tbaa !33
  %i.ajs = add i64 %i.ajr, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ajs) #33
  br label %.body319

.body319:                                         ; preds = %.body319.sink.split, %bb.ff, %bb.ex
  %.pn87 = phi { ptr, i32 } [ %i.aif, %bb.ex ], [ %lpad.phi526, %bb.ff ], [ %.pn87.ph, %.body319.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.fh

bb.fg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  br label %bb.fh

bb.fh:                                            ; preds = %.loopexit517, %.loopexit.split-lp518, %bb.fg, %.body319
  %.pn89 = phi { ptr, i32 } [ %i.ajt, %bb.fg ], [ %.pn87, %.body319 ], [ %lpad.loopexit519, %.loopexit517 ], [ %lpad.loopexit.split-lp520, %.loopexit.split-lp518 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %25) #30
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fe
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %bb.fh ], [ %i.ajo, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293.thread507: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  store ptr %i.da, ptr %27, align 8, !tbaa !123
  %i.aju = load ptr, ptr %22, align 8, !tbaa !27  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 %i.acv, ptr %i.d, align 8, !tbaa !124
  %i.ajv = icmp ugt i64 %i.acv, 15
  br i1 %i.ajv, label %.noexc.i332, label %._crit_edge.i.i331

.noexc.i332:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit293.thread507
  %i.ajw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc333 unwind label %bb.fd ; 2 uses

.noexc333:                                        ; preds = %.noexc.i332
  store ptr %i.ajw, ptr %27, align 8, !tbaa !27
  %i.ajx = load i64, ptr %i.d, align 8, !tbaa !124
end_hunk_1
begin_hunk_2_@_ZN2PP11PowerParser12list_vars_ssENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_RNS1_18basic_stringstreamIcS4_S5_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store i64 %i.hj, ptr %i.f, align 8, !tbaa !124
  %i.hk = icmp ugt i64 %i.hj, 15
  br i1 %i.hk, label %.noexc.i114, label %._crit_edge.i.i113

.noexc.i114:                                      ; preds = %bb.ad
  %i.hl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc115 unwind label %bb.an ; 2 uses

.noexc115:                                        ; preds = %.noexc.i114
  store ptr %i.hl, ptr %13, align 8, !tbaa !27
  %i.hm = load i64, ptr %i.f, align 8, !tbaa !124
  store i64 %i.hm, ptr %i.ct, align 8, !tbaa !33
  br label %._crit_edge.i.i113

._crit_edge.i.i113:                               ; preds = %.noexc115, %bb.ad
  %i.hn = phi ptr [ %i.hl, %.noexc115 ], [ %i.ct, %bb.ad ] ; 2 uses
  switch i64 %i.hj, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i113
  %i.ho = load i8, ptr %i.hi, align 1, !tbaa !33
  store i8 %i.ho, ptr %i.hn, align 1, !tbaa !33
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i113
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hn, ptr align 1 %i.hi, i64 %i.hj, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i113
  %i.hp = load i64, ptr %i.f, align 8, !tbaa !124 ; 2 uses
  store i64 %i.hp, ptr %i.cu, align 8, !tbaa !32
  %i.hq = load ptr, ptr %13, align 8, !tbaa !27
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hp
  store i8 0, ptr %i.hr, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br i1 %.not457, label %bb.bd, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hs = trunc nuw nsw i64 %indvars.iv467 to i32
  invoke void @_ZN2PP8Variable11get_indicesEiRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(136) %i.fp, i32 noundef %i.hs, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cv) #30
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.cv, align 8, !tbaa !132
  store ptr null, ptr %i.cw, align 8, !tbaa !440
  store i8 0, ptr %i.cx, align 8, !tbaa !441
  store i8 0, ptr %i.cy, align 1, !tbaa !442
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i8 0, i64 32, i1 false)
  store ptr %i.da, ptr %14, align 8, !tbaa !132
  %i.ht = load i64, ptr %i.dc, align 8
  %i.hu = getelementptr inbounds i8, ptr %14, i64 %i.ht
  store ptr %i.db, ptr %i.hu, align 8, !tbaa !132
  store i64 0, ptr %i.dd, align 8, !tbaa !134
  %i.hv = load ptr, ptr %14, align 8, !tbaa !132
  %i.hw = getelementptr i8, ptr %i.hv, i64 -24
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds i8, ptr %14, i64 %i.hx
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.hy, ptr noundef null)
          to label %.noexc.i117 unwind label %bb.al

.noexc.i117:                                      ; preds = %bb.ai
  store ptr %i.df, ptr %i.de, align 8, !tbaa !132
  %i.hz = load i64, ptr %i.dh, align 8
  %i.ia = getelementptr inbounds i8, ptr %i.de, i64 %i.hz
  store ptr %i.dg, ptr %i.ia, align 8, !tbaa !132
  %i.ib = load ptr, ptr %i.de, align 8, !tbaa !132
  %i.ic = getelementptr i8, ptr %i.ib, i64 -24
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds i8, ptr %i.de, i64 %i.id
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ie, ptr noundef null)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %.noexc.i117
  %i.if = landingpad { ptr, i32 }
          cleanup
  store ptr %i.da, ptr %14, align 8, !tbaa !132
  %i.ig = load i64, ptr %i.dc, align 8
  %i.ih = getelementptr inbounds i8, ptr %14, i64 %i.ig
  store ptr %i.db, ptr %i.ih, align 8, !tbaa !132
  store i64 0, ptr %i.dd, align 8, !tbaa !134
  br label %.body.i

bb.ak:                                            ; preds = %.noexc.i117
  store ptr %i.di, ptr %14, align 8, !tbaa !132
  %i.ii = load i64, ptr %i.dk, align 8
  %i.ij = getelementptr inbounds i8, ptr %14, i64 %i.ii
  store ptr %i.dj, ptr %i.ij, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %14, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.cv, align 8, !tbaa !132
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.de, align 8, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dm, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.dn) #30
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dl, align 8, !tbaa !132
  store i32 24, ptr %i.do, align 8, !tbaa !422
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !123
  store i64 0, ptr %i.dr, align 8, !tbaa !32
  store i8 0, ptr %i.dq, align 8, !tbaa !33
  %i.ik = load ptr, ptr %14, align 8, !tbaa !132
  %i.il = getelementptr i8, ptr %i.ik, i64 -24
  %i.im = load i64, ptr %i.il, align 8
  %i.in = getelementptr inbounds i8, ptr %14, i64 %i.im
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.in, ptr noundef nonnull %i.dl)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit unwind label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.am:                                            ; preds = %bb.ak
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.dl) #30
  store ptr %i.da, ptr %14, align 8, !tbaa !132
  %i.iq = load i64, ptr %i.dc, align 8
  %i.ir = getelementptr inbounds i8, ptr %14, i64 %i.iq
  store ptr %i.db, ptr %i.ir, align 8, !tbaa !132
  store i64 0, ptr %i.dd, align 8, !tbaa !134
  br label %.body.i

.body.i:                                          ; preds = %bb.am, %bb.al, %bb.aj
  %.pn.pn.i = phi { ptr, i32 } [ %i.ip, %bb.am ], [ %i.io, %bb.al ], [ %i.if, %bb.aj ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cv) #30
  br label %.body

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.ak
  %i.is = load ptr, ptr %10, align 8, !tbaa !27
  %i.it = load i64, ptr %i.cn, align 8, !tbaa !32
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.is, i64 noundef %i.it)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ap

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.iv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  br i1 %.not.i.i.i.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, label %.lr.ph

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull @.str.225, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121 unwind label %bb.ap ; 0 uses

bb.an:                                            ; preds = %.noexc.i114
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.ao:                                            ; preds = %bb.ah
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.preheader ] ; 3 uses
  %i.ja = icmp slt i64 %indvars.iv, %i.gw
  %i.jb = load ptr, ptr %12, align 8, !tbaa !12
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !4  ; 2 uses
  br i1 %i.ja, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %.lr.ph
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.de, i32 noundef %i.jd)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull @.str.22, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123 unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %bb.ar, %bb.at, %bb.aq
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.at:                                            ; preds = %.lr.ph
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.de, i32 noundef %i.jd)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123 unwind label %bb.as ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123: ; preds = %bb.ar, %bb.at
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge, label %.lr.ph, !llvm.loop !822

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.experimental.noalias.scope.decl(metadata !826)
  store ptr %i.ds, ptr %15, align 8, !tbaa !123, !alias.scope !829
  store i64 0, ptr %i.dt, align 8, !tbaa !32, !alias.scope !829
  store i8 0, ptr %i.ds, align 8, !tbaa !33, !alias.scope !829
  %i.ji = load ptr, ptr %i.du, align 8, !tbaa !142, !noalias !829 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ji, null
  %20 = load ptr, ptr %i.dv, align 8, !noalias !829 ; 2 uses
  %21 = icmp ugt ptr %i.ji, %20
  %.08.i.i.i = select i1 %21, ptr %i.ji, ptr %20  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i124 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i124, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121
  %i.jj = load ptr, ptr %i.dw, align 8, !tbaa !143, !noalias !829 ; 2 uses
  %i.jk = ptrtoint ptr %.08.i.i.i to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.jj, i64 noundef %i.jm)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.av ; 0 uses

bb.av:                                            ; preds = %bb.aw, %bb.au
  %i.jo = landingpad { ptr, i32 }
          cleanup
  %i.jp = load ptr, ptr %15, align 8, !tbaa !27, !alias.scope !829 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.ds
  br i1 %i.jq, label %.body125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.av
  %i.jr = load i64, ptr %i.ds, align 8, !tbaa !33, !alias.scope !829
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #33
  br label %.body125

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.dp)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.av

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.aw, %bb.au
  %i.jt = load ptr, ptr %13, align 8, !tbaa !27   ; 6 uses
  %i.ju = icmp eq ptr %i.jt, %i.ct
  %i.jv = load ptr, ptr %15, align 8, !tbaa !27   ; 5 uses
  %i.jw = icmp eq ptr %i.jv, %i.ds                ; 2 uses
  br i1 %i.ju, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.jw, label %bb.ax, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.jw, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.jx = load i64, ptr %i.dt, align 8, !tbaa !32 ; 3 uses
  %i.jy = icmp ult i64 %i.jx, 16
  call void @llvm.assume(i1 %i.jy)
  switch i64 %i.jx, label %bb.az [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.jz = load i8, ptr %i.jv, align 1, !tbaa !33
  store i8 %i.jz, ptr %i.jt, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr align 1 %i.jv, i64 %i.jx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.az, %bb.ay, %bb.ax
  %i.ka = load i64, ptr %i.dt, align 8, !tbaa !32 ; 2 uses
  store i64 %i.ka, ptr %i.cu, align 8, !tbaa !32
  %i.kb = load ptr, ptr %13, align 8, !tbaa !27
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ka
  store i8 0, ptr %i.kc, align 1, !tbaa !33
  %.pre.i = load ptr, ptr %15, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.jv, ptr %13, align 8, !tbaa !27
  %i.kd = load <2 x i64>, ptr %i.dt, align 8, !tbaa !33
  store <2 x i64> %i.kd, ptr %i.cu, align 8, !tbaa !33
  br label %bb.bb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ke = load i64, ptr %i.ct, align 8, !tbaa !33
  store ptr %i.jv, ptr %13, align 8, !tbaa !27
  %i.kf = load <2 x i64>, ptr %i.dt, align 8, !tbaa !33
  store <2 x i64> %i.kf, ptr %i.cu, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.jt, null
  br i1 %.not.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.jt, ptr %15, align 8, !tbaa !27
  store i64 %i.ke, ptr %i.ds, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ds, ptr %15, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ba, %bb.bb
  %i.kg = phi ptr [ %i.jt, %bb.ba ], [ %i.ds, %bb.bb ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.dt, align 8, !tbaa !32
  store i8 0, ptr %i.kg, align 1, !tbaa !33
  %i.kh = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.ds
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.kj = load i64, ptr %i.ds, align 8, !tbaa !33
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  store ptr %i.dx, ptr %14, align 8, !tbaa !132
  %i.kl = load i64, ptr %i.dz, align 8
  %i.km = getelementptr inbounds i8, ptr %14, i64 %i.kl
  store ptr %i.dy, ptr %i.km, align 8, !tbaa !132
  store ptr %i.ea, ptr %i.de, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dl, align 8, !tbaa !132
  %i.kn = load ptr, ptr %i.dp, align 8, !tbaa !27 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.dq
  br i1 %i.ko, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.kp = load i64, ptr %i.dq, align 8, !tbaa !33
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dl, align 8, !tbaa !132
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dn) #30
  store ptr %i.da, ptr %14, align 8, !tbaa !132
  %i.kr = load i64, ptr %i.dc, align 8
  %i.ks = getelementptr inbounds i8, ptr %14, i64 %i.kr
  store ptr %i.db, ptr %i.ks, align 8, !tbaa !132
  store i64 0, ptr %i.dd, align 8, !tbaa !134
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cv) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.bd

.body125:                                         ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.bc

bb.bc:                                            ; preds = %.body125, %bb.as, %bb.ap
  %.pn58 = phi { ptr, i32 } [ %i.jg, %bb.as ], [ %i.jo, %.body125 ], [ %i.iz, %bb.ap ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %14) #30
  br label %.body

.body:                                            ; preds = %.body.i, %bb.bc
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.bc ], [ %.pn.pn.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.ci

bb.bd:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.kt = load ptr, ptr %i.fq, align 8, !tbaa !321, !noalias !830
  %i.ku = getelementptr inbounds nuw [32 x i8], ptr %i.kt, i64 %indvars.iv467 ; 2 uses
  store ptr %i.eb, ptr %16, align 8, !tbaa !123, !alias.scope !830
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !27 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30, !noalias !830
  store i64 %i.kx, ptr %i.e, align 8, !tbaa !124, !noalias !830
  %i.ky = icmp ugt i64 %i.kx, 15
  br i1 %i.ky, label %.noexc.i.i131, label %._crit_edge.i.i.i130

.noexc.i.i131:                                    ; preds = %bb.bd
  %i.kz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc132 unwind label %bb.bt ; 2 uses

.noexc132:                                        ; preds = %.noexc.i.i131
  store ptr %i.kz, ptr %16, align 8, !tbaa !27, !alias.scope !830
  %i.la = load i64, ptr %i.e, align 8, !tbaa !124, !noalias !830
  store i64 %i.la, ptr %i.eb, align 8, !tbaa !33, !alias.scope !830
  br label %._crit_edge.i.i.i130

._crit_edge.i.i.i130:                             ; preds = %.noexc132, %bb.bd
  %i.lb = phi ptr [ %i.kz, %.noexc132 ], [ %i.eb, %bb.bd ] ; 2 uses
  switch i64 %i.kx, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %bb.bg
  ]

bb.be:                                            ; preds = %._crit_edge.i.i.i130
  %i.lc = load i8, ptr %i.kv, align 1, !tbaa !33
  store i8 %i.lc, ptr %i.lb, align 1, !tbaa !33
  br label %bb.bg

bb.bf:                                            ; preds = %._crit_edge.i.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lb, ptr align 1 %i.kv, i64 %i.kx, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge.i.i.i130
  %i.ld = load i64, ptr %i.e, align 8, !tbaa !124, !noalias !830 ; 2 uses
  store i64 %i.ld, ptr %i.ec, align 8, !tbaa !32, !alias.scope !830
  %i.le = load ptr, ptr %16, align 8, !tbaa !27, !alias.scope !830
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.ld
  store i8 0, ptr %i.lf, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30, !noalias !830
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %i.ed, label %.lr.ph446, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %bb.bg
  %i.lg = load ptr, ptr %i.bu, align 8, !tbaa !807 ; 8 uses
  %i.lh = load ptr, ptr %i.eg, align 8, !tbaa !833
  %.not.i133 = icmp eq ptr %i.lg, %i.lh
end_hunk_2
begin_hunk_3_@_ZN2PP11PowerParser12list_vars_ssENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_RNS1_18basic_stringstreamIcS4_S5_EE:bb.a
  %i.ue = sub i64 %i.uc, %i.ud
  call void @_ZdlPvm(ptr noundef nonnull %i.tz, i64 noundef %i.ue) #33
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i225

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i225: ; preds = %bb.cw, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i223
  %i.uf = getelementptr inbounds nuw i8, ptr %.05.i.i.i214, i64 24 ; 2 uses
  %.not.i.i.i226 = icmp eq ptr %i.uf, %i.tp
  br i1 %.not.i.i.i226, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i227, label %.lr.ph.i.i.i213, !llvm.loop !839

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i227: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i225
  %.pr.i228 = load ptr, ptr %5, align 8, !tbaa !810
  br label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i229

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i229: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i227, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit211
  %i.ug = phi ptr [ %.pr.i228, %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i227 ], [ %i.to, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit211 ] ; 3 uses
  %.not.i.i1.i230 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i1.i230, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit233, label %bb.cx

bb.cx:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i229
  %i.uh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !833
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = ptrtoint ptr %i.ug to i64
  %i.ul = sub i64 %i.uj, %i.uk
  call void @_ZdlPvm(ptr noundef nonnull %i.ug, i64 noundef %i.ul) #33
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit233

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit233: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i229, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.cy

bb.cy:                                            ; preds = %bb.a, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit233
  ret void

bb.cz:                                            ; preds = %.noexc281, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc279, %bb.cu, %bb.cs, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i185, %._crit_edge456
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %.body188

bb.da:                                            ; preds = %bb.co
  %i.un = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #30
  br label %.body188

.body188:                                         ; preds = %bb.cz, %bb.cn, %bb.cm, %bb.da
  %.pn53 = phi { ptr, i32 } [ %i.un, %bb.da ], [ %i.um, %bb.cz ], [ %i.re, %bb.cn ], [ %i.re, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.db

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %.body188, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.fn, %bb.u ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %.pn53, %.body188 ]
  %i.uo = load ptr, ptr %6, align 8, !tbaa !321   ; 3 uses
  %i.up = load ptr, ptr %i.an, align 8, !tbaa !323 ; 2 uses
  %.not4.i.i.i234 = icmp eq ptr %i.uo, %i.up
  br i1 %.not4.i.i.i234, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i242, label %.lr.ph.i.i.i235

.lr.ph.i.i.i235:                                  ; preds = %bb.db, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i238
  %.05.i.i.i236 = phi ptr [ %i.uv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i238 ], [ %i.uo, %bb.db ] ; 3 uses
  %i.uq = load ptr, ptr %.05.i.i.i236, align 8, !tbaa !27 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.05.i.i.i236, i64 16 ; 2 uses
  %i.us = icmp eq ptr %i.uq, %i.ur
  br i1 %i.us, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i237: ; preds = %.lr.ph.i.i.i235
  %i.ut = load i64, ptr %i.ur, align 8, !tbaa !33
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.uu) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i238

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i238: ; preds = %.lr.ph.i.i.i235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i237
  %i.uv = getelementptr inbounds nuw i8, ptr %.05.i.i.i236, i64 32 ; 2 uses
  %.not.i.i.i239 = icmp eq ptr %i.uv, %i.up
  br i1 %.not.i.i.i239, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i240, label %.lr.ph.i.i.i235, !llvm.loop !324

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i240: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i238
  %.pr.i241 = load ptr, ptr %6, align 8, !tbaa !321
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i242

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i242: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i240, %bb.db
  %i.uw = phi ptr [ %.pr.i241, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i240 ], [ %i.uo, %bb.db ] ; 3 uses
  %.not.i.i1.i243 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i1.i243, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit245, label %bb.dc

bb.dc:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i242
  %i.ux = load ptr, ptr %i.ao, align 8, !tbaa !325
  %i.uy = ptrtoint ptr %i.ux to i64
  %i.uz = ptrtoint ptr %i.uw to i64
  %i.va = sub i64 %i.uy, %i.uz
  call void @_ZdlPvm(ptr noundef nonnull %i.uw, i64 noundef %i.va) #33
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit245

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit245: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i242, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.vb = load ptr, ptr %5, align 8, !tbaa !810   ; 3 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !807 ; 2 uses
  %.not4.i.i.i246 = icmp eq ptr %i.vb, %i.vd
  br i1 %.not4.i.i.i246, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i263, label %.lr.ph.i.i.i247

.lr.ph.i.i.i247:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit245, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i259
  %.05.i.i.i248 = phi ptr [ %i.vt, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i259 ], [ %i.vb, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit245 ] ; 5 uses
  %i.ve = load ptr, ptr %.05.i.i.i248, align 8, !tbaa !321 ; 3 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.05.i.i.i248, i64 8
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !323 ; 2 uses
  %.not4.i.i.i.i.i.i.i249 = icmp eq ptr %i.ve, %i.vg
  br i1 %.not4.i.i.i.i.i.i.i249, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i257, label %.lr.ph.i.i.i.i.i.i.i250

.lr.ph.i.i.i.i.i.i.i250:                          ; preds = %.lr.ph.i.i.i247, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i253
  %.05.i.i.i.i.i.i.i251 = phi ptr [ %i.vm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i253 ], [ %i.ve, %.lr.ph.i.i.i247 ] ; 3 uses
  %i.vh = load ptr, ptr %.05.i.i.i.i.i.i.i251, align 8, !tbaa !27 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i251, i64 16 ; 2 uses
  %i.vj = icmp eq ptr %i.vh, %i.vi
  br i1 %i.vj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i252: ; preds = %.lr.ph.i.i.i.i.i.i.i250
  %i.vk = load i64, ptr %i.vi, align 8, !tbaa !33
  %i.vl = add i64 %i.vk, 1
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vl) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i253

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i253: ; preds = %.lr.ph.i.i.i.i.i.i.i250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i252
  %i.vm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i251, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i254 = icmp eq ptr %i.vm, %i.vg
  br i1 %.not.i.i.i.i.i.i.i254, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i255, label %.lr.ph.i.i.i.i.i.i.i250, !llvm.loop !324

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i255: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i253
  %.pr.i.i.i.i.i256 = load ptr, ptr %.05.i.i.i248, align 8, !tbaa !321
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i257

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i257: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i255, %.lr.ph.i.i.i247
  %i.vn = phi ptr [ %.pr.i.i.i.i.i256, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i255 ], [ %i.ve, %.lr.ph.i.i.i247 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i258 = icmp eq ptr %i.vn, null
  br i1 %.not.i.i1.i.i.i.i.i258, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i259, label %bb.dd

bb.dd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i257
  %i.vo = getelementptr inbounds nuw i8, ptr %.05.i.i.i248, i64 16
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !325
  %i.vq = ptrtoint ptr %i.vp to i64
  %i.vr = ptrtoint ptr %i.vn to i64
  %i.vs = sub i64 %i.vq, %i.vr
  call void @_ZdlPvm(ptr noundef nonnull %i.vn, i64 noundef %i.vs) #33
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i259

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i259: ; preds = %bb.dd, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i257
  %i.vt = getelementptr inbounds nuw i8, ptr %.05.i.i.i248, i64 24 ; 2 uses
  %.not.i.i.i260 = icmp eq ptr %i.vt, %i.vd
  br i1 %.not.i.i.i260, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i261, label %.lr.ph.i.i.i247, !llvm.loop !839

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i261: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i259
  %.pr.i262 = load ptr, ptr %5, align 8, !tbaa !810
  br label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i263

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i263: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i261, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit245
  %i.vu = phi ptr [ %.pr.i262, %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i261 ], [ %i.vb, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit245 ] ; 3 uses
  %.not.i.i1.i264 = icmp eq ptr %i.vu, null
  br i1 %.not.i.i1.i264, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit267, label %bb.de

bb.de:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i263
  %i.vv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !833
  %i.vx = ptrtoint ptr %i.vw to i64
  %i.vy = ptrtoint ptr %i.vu to i64
  %i.vz = sub i64 %i.vx, %i.vy
  call void @_ZdlPvm(ptr noundef nonnull %i.vu, i64 noundef %i.vz) #33
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit267

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit267: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i263, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2PP3Cmd20single_line_commentsEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #3

declare void @_ZN2PP3Cmd19multi_line_commentsERi(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN2PP3Cmd13handle_quotesERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN2PP11PowerParser24process_error_return_intERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !4      ; 2 uses
  switch i32 %i.a, label %bb.j [
    i32 0, label %bb.ab
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1880
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !123, !alias.scope !846
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !32, !alias.scope !846
  store i8 0, ptr %i.c, align 8, !tbaa !33, !alias.scope !846
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %5 = load ptr, ptr %i.e, align 8, !tbaa !142, !noalias !846 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %5, null
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %6, align 8, !noalias !846 ; 2 uses
  %7 = icmp ugt ptr %5, %i.f
  %.08.i.i.i = select i1 %7, ptr %5, ptr %i.f     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143, !noalias !846 ; 2 uses
  %i.i = ptrtoint ptr %.08.i.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.h, i64 noundef %i.k)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !27, !alias.scope !846 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.c, align 8, !tbaa !33, !alias.scope !846
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.v, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25 ], [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.dr, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.c, %bb.e
  %i.s = load ptr, ptr %3, align 8, !tbaa !27
  %i.t = load i64, ptr %i.d, align 8, !tbaa !32
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.s, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !27     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.x = load i64, ptr %i.c, align 8, !tbaa !33
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.z = load i32, ptr %2, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2256
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !144
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.208, i64 noundef 61) ; 0 uses
  %i.ac = load i32, ptr %2, align 4, !tbaa !4
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.ac) ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !132
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !161
  %.not.i1.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 67
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj)
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !132
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.an, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i8 noundef signext %.0.i.i.i)
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) ; 0 uses
  %i.au = call i32 @fflush(ptr noundef null)      ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.c
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.i
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !33
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume

bb.j:                                             ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !145 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !146
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !148
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.ab

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr @_ZSt4cout, align 8, !tbaa !132
  %i.bi = getelementptr i8, ptr %i.bh, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 240
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i36 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i36, label %bb.l, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37

bb.l:                                             ; preds = %bb.k
  call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37: ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !161
  %.not.i1.i.i38 = icmp eq i8 %i.bo, 0
  br i1 %.not.i1.i.i38, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 67
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bm)
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !132
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef signext i8 %i.bt(ptr noundef nonnull align 8 dereferenceable(570) %i.bm, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40: ; preds = %bb.m, %bb.n
  %.0.i.i.i39 = phi i8 [ %i.bq, %bb.m ], [ %i.bu, %bb.n ]
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i39)
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv) ; 0 uses
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.209, i64 noundef 67) ; 0 uses
  %i.by = load i32, ptr %2, align 4, !tbaa !4
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.by) ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !132
  %i.cb = getelementptr i8, ptr %i.ca, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 240
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i41 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i41, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42

bb.o:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40
  call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !161
  %.not.i1.i.i43 = icmp eq i8 %i.ch, 0
  br i1 %.not.i1.i.i43, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 67
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cf)
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !132
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef signext i8 %i.cm(ptr noundef nonnull align 8 dereferenceable(570) %i.cf, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45: ; preds = %bb.p, %bb.q
  %.0.i.i.i44 = phi i8 [ %i.cj, %bb.p ], [ %i.cn, %bb.q ]
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i8 noundef signext %.0.i.i.i44)
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.co) ; 0 uses
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.207, i64 noundef 70) ; 0 uses
  %i.cr = load ptr, ptr @_ZSt4cout, align 8, !tbaa !132
  %i.cs = getelementptr i8, ptr %i.cr, i64 -24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 240
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i46 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i46, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47

bb.r:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45
  call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !161
  %.not.i1.i.i48 = icmp eq i8 %i.cy, 0
  br i1 %.not.i1.i.i48, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 67
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i47
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cw)
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !132
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef signext i8 %i.dd(ptr noundef nonnull align 8 dereferenceable(570) %i.cw, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50: ; preds = %bb.s, %bb.t
  %.0.i.i.i49 = phi i8 [ %i.da, %bb.s ], [ %i.de, %bb.t ]
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i49)
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.dh, ptr %4, align 8, !tbaa !123, !alias.scope !853
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.di, align 8, !tbaa !32, !alias.scope !853
  store i8 0, ptr %i.dh, align 8, !tbaa !33, !alias.scope !853
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %8 = load ptr, ptr %i.dj, align 8, !tbaa !142, !noalias !853 ; 3 uses
  %.not.i.not.i.i21 = icmp eq ptr %8, null
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dk = load ptr, ptr %9, align 8, !noalias !853 ; 2 uses
  %10 = icmp ugt ptr %8, %i.dk
  %.08.i.i.i22 = select i1 %10, ptr %8, ptr %i.dk ; 2 uses
  %.not5.i.i23 = icmp eq ptr %.08.i.i.i22, null
  %.not.i.i24 = select i1 %.not.i.not.i.i21, i1 true, i1 %.not5.i.i23
  br i1 %.not.i.i24, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !143, !noalias !853 ; 2 uses
  %i.dn = ptrtoint ptr %.08.i.i.i22 to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.dm, i64 noundef %i.dp)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit28 unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %4, align 8, !tbaa !27, !alias.scope !853 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dh
  br i1 %i.dt, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i25: ; preds = %bb.v
  %i.du = load i64, ptr %i.dh, align 8, !tbaa !33, !alias.scope !853
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #33
  br label %common.resume

bb.w:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit50
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.dw)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit28 unwind label %bb.v

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit28: ; preds = %bb.u, %bb.w
  %i.dx = load ptr, ptr %4, align 8, !tbaa !27
  %i.dy = load i64, ptr %i.di, align 8, !tbaa !32
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.dx, i64 noundef %i.dy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29 unwind label %bb.aa ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit28
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !132
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 240
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i51 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i51, label %bb.x, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52

bb.x:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.x
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !161
  %.not.i1.i.i53 = icmp eq i8 %i.eh, 0
  br i1 %.not.i1.i.i53, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 67
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ef)
          to label %.noexc55.a unwind label %bb.aa

.noexc55.a:                                       ; preds = %bb.z
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !132
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef signext i8 %i.em(ptr noundef nonnull align 8 dereferenceable(570) %i.ef, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.aa, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc55.a, %bb.y
  %.0.i.i.i54 = phi i8 [ %i.ej, %bb.y ], [ %i.en, %.noexc55.a ]
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i8 noundef signext %.0.i.i.i54)
          to label %.noexc57 unwind label %bb.aa

.noexc57:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.aa ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc57
  %i.eq = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dh
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.es = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.eu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout) ; 0 uses
  %i.ev = call i32 @fflush(ptr noundef null)      ; 0 uses
  br label %bb.ab

bb.aa:                                            ; preds = %.noexc57, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc55.a, %bb.z, %bb.x, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit28
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.dh
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.aa
  %i.ez = load i64, ptr %i.dh, align 8, !tbaa !33
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume

bb.ab:                                            ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.a
  ret i32 %i.a
}

declare void @_ZN2PP3Cmd10erase_wordEi(ptr noundef nonnull align 8 dereferenceable(432), i32 noundef) local_unnamed_addr #3

declare void @_ZN2PP3Cmd8add_wordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN2PP3Cmd15reset_name_typeEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2PP3Cmd19check_for_dimensionERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN2PP3Cmd16handle_two_wordsEv(ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #3

declare void @_ZN2PP3Cmd18deprecated_input01ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_18basic_stringstreamIcS4_S5_EERi(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef, ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN2PP3CmdC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(432) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = load i64, ptr %1, align 8
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !123
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store i64 %i.m, ptr %i.f, align 8, !tbaa !124
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %i.h, align 8, !tbaa !27
  %i.p = load i64, ptr %i.f, align 8, !tbaa !124
  store i64 %i.p, ptr %i.j, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %i.j, %bb.a ] ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !33
  store i8 %i.r, ptr %i.q, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.s = load i64, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !32
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !854
  store ptr %i.y, ptr %i.w, align 8, !tbaa !854
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !123
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !27 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !124
  %i.af = icmp ugt i64 %i.ae, 15
  br i1 %i.af, label %.noexc.i35, label %._crit_edge.i.i34

end_hunk_3
begin_hunk_4_@_ZN2PP12RestartblockD2Ev:bb.a
; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser9list_varsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(2796) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !123
  %i.e = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 %i.g, ptr %i.c, align 8, !tbaa !124
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %5, align 8, !tbaa !27
  %i.j = load i64, ptr %i.c, align 8, !tbaa !124
  store i64 %i.j, ptr %i.d, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !33
  store i8 %i.l, ptr %i.k, align 1, !tbaa !33
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !32
  %i.o = load ptr, ptr %5, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.q, ptr %6, align 8, !tbaa !123
  %i.r = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.t, ptr %i.b, align 8, !tbaa !124
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i12, label %._crit_edge.i.i11

.noexc.i12:                                       ; preds = %bb.d
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc13 unwind label %bb.q   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i12
  store ptr %i.v, ptr %6, align 8, !tbaa !27
  %i.w = load i64, ptr %i.b, align 8, !tbaa !124
  store i64 %i.w, ptr %i.q, align 8, !tbaa !33
  br label %._crit_edge.i.i11

._crit_edge.i.i11:                                ; preds = %.noexc13, %bb.d
  %i.x = phi ptr [ %i.v, %.noexc13 ], [ %i.q, %bb.d ] ; 2 uses
  switch i64 %i.t, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i11
  %i.y = load i8, ptr %i.r, align 1, !tbaa !33
  store i8 %i.y, ptr %i.x, align 1, !tbaa !33
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i11
  %i.z = load i64, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !32
  %i.ab = load ptr, ptr %6, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !123
  %i.ae = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !124
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %.noexc.i16, label %._crit_edge.i.i15

.noexc.i16:                                       ; preds = %bb.g
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.r   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i16
  store ptr %i.ai, ptr %7, align 8, !tbaa !27
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !33
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc17, %bb.g
  %i.ak = phi ptr [ %i.ai, %.noexc17 ], [ %i.ad, %bb.g ] ; 2 uses
  switch i64 %i.ag, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i15
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !33
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !33
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i15
  %i.am = load i64, ptr %i.a, align 8, !tbaa !124 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !32
  %i.ao = load ptr, ptr %7, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN2PP11PowerParser12list_vars_ssENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_RNS1_18basic_stringstreamIcS4_S5_EE(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ad
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.as = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.au = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.q
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !33
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.ay = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.d
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !33
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !145 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !146
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !148
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.l, label %bb.u

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bj, ptr %8, align 8, !tbaa !123, !alias.scope !871
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !32, !alias.scope !871
  store i8 0, ptr %i.bj, align 8, !tbaa !33, !alias.scope !871
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 64
  %10 = load ptr, ptr %9, align 8, !tbaa !142, !noalias !871 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %10, null
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !871 ; 2 uses
  %11 = icmp ugt ptr %10, %i.bm
  %.08.i.i.i = select i1 %11, ptr %10, ptr %i.bm  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !143, !noalias !871 ; 2 uses
  %i.bp = ptrtoint ptr %.08.i.i.i to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.bo, i64 noundef %i.br)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %8, align 8, !tbaa !27, !alias.scope !871 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bj
  br i1 %i.bv, label %.body, label %.body.sink.split

bb.o:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.bx = load ptr, ptr %8, align 8, !tbaa !27
  %i.by = load i64, ptr %i.bk, align 8, !tbaa !32
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bx, i64 noundef %i.by)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.t ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ca = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bj
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cc = load i64, ptr %i.bj, align 8, !tbaa !33
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.u

bb.p:                                             ; preds = %.noexc.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.q:                                             ; preds = %.noexc.i12
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.r:                                             ; preds = %.noexc.i16
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.s:                                             ; preds = %bb.j
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ad
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.s
  %i.ck = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.r ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.ch, %bb.s ] ; 2 uses
  %i.cm = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.q
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.co = load i64, ptr %i.q, align 8, !tbaa !33
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.q ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ] ; 2 uses
  %i.cq = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.d
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.cs = load i64, ptr %i.d, align 8, !tbaa !33
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.t:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bj
  br i1 %i.cw, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.t, %bb.n
  %.sink = phi ptr [ %i.bu, %bb.n ], [ %i.cv, %bb.t ]
  %.pn8.ph = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.cu, %bb.t ]
  %i.cx = load i64, ptr %i.bj, align 8, !tbaa !33
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cy) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.t, %bb.n
  %.pn8 = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.cu, %bb.t ], [ %.pn8.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.cz = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cz, ptr %4, align 8, !tbaa !132
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.db = getelementptr i8, ptr %i.cz, i64 -24
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds i8, ptr %4, i64 %i.dc
  store ptr %i.da, ptr %i.dd, align 8, !tbaa !132
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.de, ptr %i.df, align 8, !tbaa !132
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dg, align 8, !tbaa !132
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !33
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dg, align 8, !tbaa !132
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dn) #30
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.do, ptr %4, align 8, !tbaa !132
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dq = getelementptr i8, ptr %i.do, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %4, i64 %i.dr
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !132
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.dt, align 8, !tbaa !134
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.du) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %.body, %bb.p
  %.pn8.pn = phi { ptr, i32 } [ %.pn8, %.body ], [ %i.ce, %bb.p ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn8.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser10list_funcsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(2796) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !123
  %i.d = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.f, ptr %i.b, align 8, !tbaa !124
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %4, align 8, !tbaa !27
  %i.i = load i64, ptr %i.b, align 8, !tbaa !124
  store i64 %i.i, ptr %i.c, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !33
  store i8 %i.k, ptr %i.j, align 1, !tbaa !33
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !32
  %i.n = load ptr, ptr %4, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !123
  %i.q = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.s, ptr %i.a, align 8, !tbaa !124
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i10, label %._crit_edge.i.i9

.noexc.i10:                                       ; preds = %bb.d
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.n   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i10
  store ptr %i.u, ptr %5, align 8, !tbaa !27
  %i.v = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.v, ptr %i.p, align 8, !tbaa !33
  br label %._crit_edge.i.i9

._crit_edge.i.i9:                                 ; preds = %.noexc11, %bb.d
  %i.w = phi ptr [ %i.u, %.noexc11 ], [ %i.p, %bb.d ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i9
  %i.x = load i8, ptr %i.q, align 1, !tbaa !33
  store i8 %i.x, ptr %i.w, align 1, !tbaa !33
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i9
  %i.y = load i64, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !32
  %i.aa = load ptr, ptr %5, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN2PP11PowerParser13list_funcs_ssENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RNS1_18basic_stringstreamIcS4_S5_EE(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !33
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ag = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.c
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !33
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !145 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !146
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !148
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.q

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !123, !alias.scope !878
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.as, align 8, !tbaa !32, !alias.scope !878
  store i8 0, ptr %i.ar, align 8, !tbaa !33, !alias.scope !878
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %8 = load ptr, ptr %7, align 8, !tbaa !142, !noalias !878 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %8, null
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !noalias !878 ; 2 uses
  %9 = icmp ugt ptr %8, %i.au
  %.08.i.i.i = select i1 %9, ptr %8, ptr %i.au    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !143, !noalias !878 ; 2 uses
  %i.ax = ptrtoint ptr %.08.i.i.i to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.aw, i64 noundef %i.az)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %6, align 8, !tbaa !27, !alias.scope !878 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ar
  br i1 %i.bd, label %.body, label %.body.sink.split

bb.l:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.bf = load ptr, ptr %6, align 8, !tbaa !27
  %i.bg = load i64, ptr %i.as, align 8, !tbaa !32
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bf, i64 noundef %i.bg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bi = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ar
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bk = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.q

bb.m:                                             ; preds = %.noexc.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.n:                                             ; preds = %.noexc.i10
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.o:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.o
  %i.br = load i64, ptr %i.p, align 8, !tbaa !33
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.n ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bo, %bb.o ] ; 2 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.c
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !33
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.p:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ar
  br i1 %i.bz, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.p, %bb.k
  %.sink = phi ptr [ %i.bc, %bb.k ], [ %i.by, %bb.p ]
  %.pn6.ph = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.bx, %bb.p ]
  %i.ca = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cb) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.p, %bb.k
  %.pn6 = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.bx, %bb.p ], [ %.pn6.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.cc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cc, ptr %3, align 8, !tbaa !132
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ce = getelementptr i8, ptr %i.cc, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %3, i64 %i.cf
  store ptr %i.cd, ptr %i.cg, align 8, !tbaa !132
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !132
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cj, align 8, !tbaa !132
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !27 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !33
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cj, align 8, !tbaa !132
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cq) #30
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cr, ptr %3, align 8, !tbaa !132
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ct = getelementptr i8, ptr %i.cr, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %3, i64 %i.cu
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !132
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !134
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cx) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %.body, %bb.m
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %.body ], [ %i.bm, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn6.pn
}

declare void @_ZN2PP8WhenthenC1ERiRNS_3CmdERbS4_bRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEES1_(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN2PP8WhenthenESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(568) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !879  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !880
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -568
  %.not = icmp eq ptr %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2PP8WhenthenC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(568) %i.b, ptr noundef nonnull align 8 dereferenceable(568) %1)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !879
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  store ptr %i.g, ptr %i.a, align 8, !tbaa !879
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt5dequeIN2PP8WhenthenESaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(568) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2PP8WhenthenD2Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  tail call void @_ZNSt5dequeIN2PP3CmdESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !332  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt5dequeIbSaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !333  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !334  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.06.i.i.i, align 8, !tbaa !335
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef 512) #33
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.l = icmp ult ptr %.06.i.i.i, %i.g
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIbSaIbEE16_M_destroy_nodesEPPbS3_.exit.loopexit.i.i, !llvm.loop !336
end_hunk_4
begin_hunk_5_@_ZN2PP11PowerParser15process_dav_cmdEv:bb.a
_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ig = phi ptr [ %.pre137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre138, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre138, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit ] ; 2 uses
  %.230 = phi i32 [ %.129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.028, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.028, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit ] ; 2 uses
  %.327 = phi i32 [ %.226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.024, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.024, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit ]
  %.121 = phi i32 [ %.020, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 4, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 4, %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit ]
  %i.ih = icmp eq ptr %i.ig, %i.u
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ii = load i64, ptr %i.u, align 8, !tbaa !33
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  switch i32 %.121, label %bb.ak [
    i32 0, label %bb.ai
    i32 4, label %bb.ai
  ]

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !1078

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ag
  %i.ik = load i64, ptr %i.t, align 8, !tbaa !33
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.il) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %.pn, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.bt, %bb.f ]
  %i.im = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.u
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.aj
  %i.io = load i64, ptr %i.u, align 8, !tbaa !33
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.ak:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %spec.select38 = phi i32 [ %.230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ 0, %bb.b ]
  ret i32 %spec.select38
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser10list_cmdsfENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2796) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !123
  %i.d = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.f, ptr %i.b, align 8, !tbaa !124
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %4, align 8, !tbaa !27
  %i.i = load i64, ptr %i.b, align 8, !tbaa !124
  store i64 %i.i, ptr %i.c, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !33
  store i8 %i.k, ptr %i.j, align 1, !tbaa !33
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !32
  %i.n = load ptr, ptr %4, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !123
  %i.q = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.s, ptr %i.a, align 8, !tbaa !124
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i10, label %._crit_edge.i.i9

.noexc.i10:                                       ; preds = %bb.d
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.n   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i10
  store ptr %i.u, ptr %5, align 8, !tbaa !27
  %i.v = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.v, ptr %i.p, align 8, !tbaa !33
  br label %._crit_edge.i.i9

._crit_edge.i.i9:                                 ; preds = %.noexc11, %bb.d
  %i.w = phi ptr [ %i.u, %.noexc11 ], [ %i.p, %bb.d ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i9
  %i.x = load i8, ptr %i.q, align 1, !tbaa !33
  store i8 %i.x, ptr %i.w, align 1, !tbaa !33
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i9
  %i.y = load i64, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !32
  %i.aa = load ptr, ptr %5, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN2PP11PowerParser13list_cmdsf_ssENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RNS1_18basic_stringstreamIcS4_S5_EE(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !33
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ag = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.c
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !33
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !145 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !146
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !148
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.q

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !123, !alias.scope !1085
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.as, align 8, !tbaa !32, !alias.scope !1085
  store i8 0, ptr %i.ar, align 8, !tbaa !33, !alias.scope !1085
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %8 = load ptr, ptr %7, align 8, !tbaa !142, !noalias !1085 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %8, null
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !noalias !1085 ; 2 uses
  %9 = icmp ugt ptr %8, %i.au
  %.08.i.i.i = select i1 %9, ptr %8, ptr %i.au    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !143, !noalias !1085 ; 2 uses
  %i.ax = ptrtoint ptr %.08.i.i.i to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.aw, i64 noundef %i.az)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %6, align 8, !tbaa !27, !alias.scope !1085 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ar
  br i1 %i.bd, label %.body, label %.body.sink.split

bb.l:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.bf = load ptr, ptr %6, align 8, !tbaa !27
  %i.bg = load i64, ptr %i.as, align 8, !tbaa !32
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bf, i64 noundef %i.bg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bi = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ar
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bk = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.q

bb.m:                                             ; preds = %.noexc.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.n:                                             ; preds = %.noexc.i10
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.o:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.p
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.o
  %i.br = load i64, ptr %i.p, align 8, !tbaa !33
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.n ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bo, %bb.o ] ; 2 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.c
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !33
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.p:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ar
  br i1 %i.bz, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.p, %bb.k
  %.sink = phi ptr [ %i.bc, %bb.k ], [ %i.by, %bb.p ]
  %.pn6.ph = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.bx, %bb.p ]
  %i.ca = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cb) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.p, %bb.k
  %.pn6 = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %i.bx, %bb.p ], [ %.pn6.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.cc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cc, ptr %3, align 8, !tbaa !132
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ce = getelementptr i8, ptr %i.cc, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %3, i64 %i.cf
  store ptr %i.cd, ptr %i.cg, align 8, !tbaa !132
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !132
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cj, align 8, !tbaa !132
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !27 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !33
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cj, align 8, !tbaa !132
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cq) #30
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cr, ptr %3, align 8, !tbaa !132
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ct = getelementptr i8, ptr %i.cr, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %3, i64 %i.cu
  store ptr %i.cs, ptr %i.cv, align 8, !tbaa !132
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !134
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cx) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %.body, %bb.m
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %.body ], [ %i.bm, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser13list_wt_cmdsfEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2796) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  invoke void @_ZN2PP11PowerParser16list_wt_cmdsf_ssERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !148
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !123, !alias.scope !1092
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !32, !alias.scope !1092
  store i8 0, ptr %i.h, align 8, !tbaa !33, !alias.scope !1092
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !142, !noalias !1092 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1092 ; 2 uses
  %5 = icmp ugt ptr %4, %i.k
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.k     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !143, !noalias !1092 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !27, !alias.scope !1092 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.h
  br i1 %i.t, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.v = load ptr, ptr %2, align 8, !tbaa !27
  %i.w = load i64, ptr %i.i, align 8, !tbaa !32
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.v, i64 noundef %i.w)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.h
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !33
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.h
  br i1 %i.af, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.h, %bb.e
  %.sink = phi ptr [ %i.s, %bb.e ], [ %i.ae, %bb.h ]
  %.pn.ph = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.ad, %bb.h ]
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !33
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ah) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.ad, %bb.h ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ai = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !tbaa !132
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !132
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !132
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !132
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !33
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ap, align 8, !tbaa !132
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #30
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ax, ptr %1, align 8, !tbaa !132
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %i.ba
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !132
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !134
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bd) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.j:                                             ; preds = %.body, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ac, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser7list_rbEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2796) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  invoke void @_ZN2PP11PowerParser10list_rb_ssERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !148
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !123, !alias.scope !1099
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !32, !alias.scope !1099
  store i8 0, ptr %i.h, align 8, !tbaa !33, !alias.scope !1099
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !142, !noalias !1099 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1099 ; 2 uses
  %5 = icmp ugt ptr %4, %i.k
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.k     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !143, !noalias !1099 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !27, !alias.scope !1099 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.h
  br i1 %i.t, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.v = load ptr, ptr %2, align 8, !tbaa !27
  %i.w = load i64, ptr %i.i, align 8, !tbaa !32
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.v, i64 noundef %i.w)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.h
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !33
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.h
  br i1 %i.af, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.h, %bb.e
  %.sink = phi ptr [ %i.s, %bb.e ], [ %i.ae, %bb.h ]
  %.pn.ph = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.ad, %bb.h ]
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !33
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ah) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.ad, %bb.h ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ai = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !tbaa !132
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %1, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !132
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !132
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !132
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !33
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ap, align 8, !tbaa !132
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #30
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ax, ptr %1, align 8, !tbaa !132
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %i.ba
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !132
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !134
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bd) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.j:                                             ; preds = %.body, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ac, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN2PP3Cmd14copy_call_argsERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERS1_IbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare void @_ZN2PP3Cmd13copy_sub_argsERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERS1_IbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !321    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !323  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !27 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !33
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !324

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !321
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !325
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #33
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN2PP3Cmd15find_subroutineERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN2PP3Cmd13get_call_argsERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERS1_IbSaIbEERNS2_18basic_stringstreamIcS5_S6_EERi(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN2PP3Cmd12get_sub_argsERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERS1_IbSaIbEE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN2PP8VariableC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !123
  %i.d = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.f, ptr %i.b, align 8, !tbaa !124
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !27
  %i.i = load i64, ptr %i.b, align 8, !tbaa !124
  store i64 %i.i, ptr %i.c, align 8, !tbaa !33
  br label %._crit_edge.i.i

end_hunk_5
begin_hunk_6_@_ZN2PP11PowerParser16check_dup_scalarEiRb:bb.a

_ZNSolsEPFRSoS_E.exit320:                         ; preds = %.noexc485
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !132
  %i.ace = getelementptr i8, ptr %i.acd, i64 -24
  %i.acf = load i64, ptr %i.ace, align 8
  %i.acg = getelementptr inbounds i8, ptr %i.acc, i64 %i.acf
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 240
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i488 = icmp eq ptr %i.aci, null
  br i1 %.not.i.i.i488, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i489

.invoke:                                          ; preds = %bb.db, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit302, %_ZNSolsEPFRSoS_E.exit320, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit318, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit314, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.cont unwind label %bb.di

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i489: ; preds = %_ZNSolsEPFRSoS_E.exit320
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 56
  %i.ack = load i8, ptr %i.acj, align 8, !tbaa !161
  %.not.i1.i.i490 = icmp eq i8 %i.ack, 0
  br i1 %.not.i1.i.i490, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i489
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aci, i64 67
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i491

bb.ds:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i489
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aci)
          to label %.noexc494 unwind label %bb.di

.noexc494:                                        ; preds = %bb.ds
  %i.acn = load ptr, ptr %i.aci, align 8, !tbaa !132
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 48
  %i.acp = load ptr, ptr %i.aco, align 8
  %i.acq = invoke noundef signext i8 %i.acp(ptr noundef nonnull align 8 dereferenceable(570) %i.aci, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i491 unwind label %bb.di, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i491: ; preds = %.noexc494, %bb.dr
  %.0.i.i.i492 = phi i8 [ %i.acm, %bb.dr ], [ %i.acq, %.noexc494 ]
  %i.acr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.acc, i8 noundef signext %.0.i.i.i492)
          to label %.noexc496 unwind label %bb.di

.noexc496:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i491
  %i.acs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.acr)
          to label %_ZNSolsEPFRSoS_E.exit322 unwind label %bb.di ; 0 uses

_ZNSolsEPFRSoS_E.exit322:                         ; preds = %.noexc496
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %23)
          to label %bb.dt unwind label %bb.ei

bb.dt:                                            ; preds = %_ZNSolsEPFRSoS_E.exit322
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %.b = load i1, ptr @_ZN2PPL10index_baseE, align 4
  %not..b = xor i1 %.b, true
  %i.act = zext i1 %not..b to i32
  invoke void @_ZN2PP12Parser_utilsC1Ei(ptr noundef nonnull align 1 dereferenceable(1) %24, i32 noundef %i.act)
          to label %bb.du unwind label %bb.ej

bb.du:                                            ; preds = %bb.dt
  %i.acu = load ptr, ptr %i.by, align 8, !tbaa !807 ; 3 uses
  %i.acv = load ptr, ptr %3, align 8, !tbaa !810  ; 3 uses
  %i.acw = ptrtoint ptr %i.acu to i64
  %i.acx = ptrtoint ptr %i.acv to i64
  %i.acy = sub i64 %i.acw, %i.acx                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %.not.i.i.i.i323 = icmp eq ptr %i.acu, %i.acv
  br i1 %.not.i.i.i.i323, label %.noexc327, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.acz = sdiv exact i64 %i.acy, 24
  %i.ada = icmp ugt i64 %i.acz, 384307168202282325
  br i1 %i.ada, label %.noexc.i.i325, label %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i, !prof !834

.noexc.i.i325:                                    ; preds = %bb.dv
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc326 unwind label %bb.ej

.noexc326:                                        ; preds = %.noexc.i.i325
  unreachable

_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.dv
  %i.adb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acy) #32
          to label %.noexc327 unwind label %bb.ej

.noexc327:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i, %bb.du
  %i.adc = phi ptr [ null, %bb.du ], [ %i.adb, %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.adc, ptr %25, align 8, !tbaa !810
  %i.add = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  store ptr %i.adc, ptr %i.add, align 8, !tbaa !807
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.acy
  %i.adf = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  store ptr %i.ade, ptr %i.adf, align 8, !tbaa !833
  %i.adg = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %i.acv, ptr %i.acu, ptr noundef %i.adc)
          to label %bb.dy unwind label %bb.dw

bb.dw:                                            ; preds = %.noexc327
  %i.adh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adi = load ptr, ptr %25, align 8, !tbaa !810 ; 3 uses
  %.not.i.i.i324 = icmp eq ptr %i.adi, null
  br i1 %.not.i.i.i324, label %.body328, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.adj = load ptr, ptr %i.adf, align 8, !tbaa !833
  %i.adk = ptrtoint ptr %i.adj to i64
  %i.adl = ptrtoint ptr %i.adi to i64
  %i.adm = sub i64 %i.adk, %i.adl
  call void @_ZdlPvm(ptr noundef nonnull %i.adi, i64 noundef %i.adm) #33
  br label %.body328

bb.dy:                                            ; preds = %.noexc327
  store ptr %i.adg, ptr %i.add, align 8, !tbaa !807
  invoke void @_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE(ptr noundef nonnull align 1 dereferenceable(1) %24, ptr noundef nonnull %25, i32 noundef %i.cf, i32 noundef 4, i32 noundef 3, i32 noundef 80, ptr noundef nonnull align 8 dereferenceable(128) %23)
          to label %bb.dz unwind label %bb.ek

bb.dz:                                            ; preds = %bb.dy
  %i.adn = load ptr, ptr %25, align 8, !tbaa !810 ; 3 uses
  %i.ado = load ptr, ptr %i.add, align 8, !tbaa !807 ; 2 uses
  %.not4.i.i.i330 = icmp eq ptr %i.adn, %i.ado
  br i1 %.not4.i.i.i330, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i331

.lr.ph.i.i.i331:                                  ; preds = %bb.dz, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.05.i.i.i332 = phi ptr [ %i.aee, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i ], [ %i.adn, %bb.dz ] ; 5 uses
  %i.adp = load ptr, ptr %.05.i.i.i332, align 8, !tbaa !321 ; 3 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %.05.i.i.i332, i64 8
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !323 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.adp, %i.adr
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i331, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.adx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.adp, %.lr.ph.i.i.i331 ] ; 3 uses
  %i.ads = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.adu = icmp eq ptr %i.ads, %i.adt
  br i1 %i.adu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.adv = load i64, ptr %i.adt, align 8, !tbaa !33
  %i.adw = add i64 %i.adv, 1
  call void @_ZdlPvm(ptr noundef %i.ads, i64 noundef %i.adw) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.adx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.adx, %i.adr
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !324

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i332, align 8, !tbaa !321
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i331
  %i.ady = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.adp, %.lr.ph.i.i.i331 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ady, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.adz = getelementptr inbounds nuw i8, ptr %.05.i.i.i332, i64 16
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !325
  %i.aeb = ptrtoint ptr %i.aea to i64
  %i.aec = ptrtoint ptr %i.ady to i64
  %i.aed = sub i64 %i.aeb, %i.aec
  call void @_ZdlPvm(ptr noundef nonnull %i.ady, i64 noundef %i.aed) #33
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i: ; preds = %bb.ea, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.aee = getelementptr inbounds nuw i8, ptr %.05.i.i.i332, i64 24 ; 2 uses
  %.not.i.i.i333 = icmp eq ptr %i.aee, %i.ado
  br i1 %.not.i.i.i333, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i331, !llvm.loop !839

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i
  %.pr.i334 = load ptr, ptr %25, align 8, !tbaa !810
  br label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %bb.dz
  %i.aef = phi ptr [ %.pr.i334, %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.adn, %bb.dz ] ; 3 uses
  %.not.i.i1.i335 = icmp eq ptr %i.aef, null
  br i1 %.not.i.i1.i335, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit, label %bb.eb

bb.eb:                                            ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i
  %i.aeg = load ptr, ptr %i.adf, align 8, !tbaa !833
  %i.aeh = ptrtoint ptr %i.aeg to i64
  %i.aei = ptrtoint ptr %i.aef to i64
  %i.aej = sub i64 %i.aeh, %i.aei
  call void @_ZdlPvm(ptr noundef nonnull %i.aef, i64 noundef %i.aej) #33
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit.i, %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.aek = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  store ptr %i.aek, ptr %26, align 8, !tbaa !123, !alias.scope !1144
  %i.ael = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  store i64 0, ptr %i.ael, align 8, !tbaa !32, !alias.scope !1144
  store i8 0, ptr %i.aek, align 8, !tbaa !33, !alias.scope !1144
  %27 = getelementptr inbounds nuw i8, ptr %23, i64 64
  %28 = load ptr, ptr %27, align 8, !tbaa !142, !noalias !1144 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %28, null
  %i.aem = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.aen = load ptr, ptr %i.aem, align 8, !noalias !1144 ; 2 uses
  %29 = icmp ugt ptr %28, %i.aen
  %.08.i.i.i = select i1 %29, ptr %28, ptr %i.aen ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i337 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i337, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit
  %i.aeo = getelementptr inbounds nuw i8, ptr %23, i64 56
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !143, !noalias !1144 ; 2 uses
  %i.aeq = ptrtoint ptr %.08.i.i.i to i64
  %i.aer = ptrtoint ptr %i.aep to i64
  %i.aes = sub i64 %i.aeq, %i.aer
  %i.aet = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef 0, i64 noundef 0, ptr noundef %i.aep, i64 noundef %i.aes)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ed ; 0 uses

bb.ed:                                            ; preds = %bb.ee, %bb.ec
  %i.aeu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aev = load ptr, ptr %26, align 8, !tbaa !27, !alias.scope !1144 ; 2 uses
  %i.aew = icmp eq ptr %i.aev, %i.aek
  br i1 %i.aew, label %.body338, label %.body338.sink.split

bb.ee:                                            ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev.exit
  %i.aex = getelementptr inbounds nuw i8, ptr %23, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %i.aex)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ed

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ee, %bb.ec
  %i.aey = load ptr, ptr %26, align 8, !tbaa !27
  %i.aez = load i64, ptr %i.ael, align 8, !tbaa !32
  %i.afa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.aey, i64 noundef %i.aez)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.el ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !132
  %i.afc = getelementptr i8, ptr %i.afb, i64 -24
  %i.afd = load i64, ptr %i.afc, align 8
  %i.afe = getelementptr inbounds i8, ptr %i.afa, i64 %i.afd
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 240
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i499 = icmp eq ptr %i.afg, null
  br i1 %.not.i.i.i499, label %bb.ef, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i500

bb.ef:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc504.a unwind label %bb.el

.noexc504.a:                                      ; preds = %bb.ef
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i500: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 56
  %i.afi = load i8, ptr %i.afh, align 8, !tbaa !161
  %.not.i1.i.i501 = icmp eq i8 %i.afi, 0
  br i1 %.not.i1.i.i501, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i500
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afg, i64 67
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i502

bb.eh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i500
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.afg)
          to label %.noexc505 unwind label %bb.el

.noexc505:                                        ; preds = %bb.eh
  %i.afl = load ptr, ptr %i.afg, align 8, !tbaa !132
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 48
  %i.afn = load ptr, ptr %i.afm, align 8
  %i.afo = invoke noundef signext i8 %i.afn(ptr noundef nonnull align 8 dereferenceable(570) %i.afg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i502 unwind label %bb.el, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i502: ; preds = %.noexc505, %bb.eg
  %.0.i.i.i503 = phi i8 [ %i.afk, %bb.eg ], [ %i.afo, %.noexc505 ]
  %i.afp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.afa, i8 noundef signext %.0.i.i.i503)
          to label %.noexc507 unwind label %bb.el

.noexc507:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i502
  %i.afq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afp)
          to label %_ZNSolsEPFRSoS_E.exit342 unwind label %bb.el ; 0 uses

_ZNSolsEPFRSoS_E.exit342:                         ; preds = %.noexc507
  %i.afr = load ptr, ptr %26, align 8, !tbaa !27  ; 2 uses
  %i.afs = icmp eq ptr %i.afr, %i.aek
  br i1 %i.afs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %_ZNSolsEPFRSoS_E.exit342
  %i.aft = load i64, ptr %i.aek, align 8, !tbaa !33
  %i.afu = add i64 %i.aft, 1
  call void @_ZdlPvm(ptr noundef %i.afr, i64 noundef %i.afu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %_ZNSolsEPFRSoS_E.exit342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.afv = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.afv, ptr %23, align 8, !tbaa !132
  %i.afw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.afx = getelementptr i8, ptr %i.afv, i64 -24
  %i.afy = load i64, ptr %i.afx, align 8
  %i.afz = getelementptr inbounds i8, ptr %23, i64 %i.afy
  store ptr %i.afw, ptr %i.afz, align 8, !tbaa !132
  %i.aga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.agb = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %i.aga, ptr %i.agb, align 8, !tbaa !132
  %i.agc = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.agc, align 8, !tbaa !132
  %i.agd = getelementptr inbounds nuw i8, ptr %23, i64 96
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !27 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %23, i64 112 ; 2 uses
  %i.agg = icmp eq ptr %i.age, %i.agf
  br i1 %i.agg, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
  %i.agh = load i64, ptr %i.agf, align 8, !tbaa !33
  %i.agi = add i64 %i.agh, 1
  call void @_ZdlPvm(ptr noundef %i.age, i64 noundef %i.agi) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit348

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i346
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.agc, align 8, !tbaa !132
  %i.agj = getelementptr inbounds nuw i8, ptr %23, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.agj) #30
  %i.agk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.agk, ptr %23, align 8, !tbaa !132
  %i.agl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.agm = getelementptr i8, ptr %i.agk, i64 -24
  %i.agn = load i64, ptr %i.agm, align 8
  %i.ago = getelementptr inbounds i8, ptr %23, i64 %i.agn
  store ptr %i.agl, ptr %i.ago, align 8, !tbaa !132
  %i.agp = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %i.agp, align 8, !tbaa !134
  %i.agq = getelementptr inbounds nuw i8, ptr %23, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.agq) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.en

bb.ei:                                            ; preds = %_ZNSolsEPFRSoS_E.exit322
  %i.agr = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ej:                                            ; preds = %_ZNSt15__new_allocatorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i325, %bb.dt
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %.body328

bb.ek:                                            ; preds = %bb.dy
  %i.agt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #30
  br label %.body328

bb.el:                                            ; preds = %.noexc507, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i502, %.noexc505, %bb.eh, %bb.ef, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.agu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agv = load ptr, ptr %26, align 8, !tbaa !27  ; 2 uses
  %i.agw = icmp eq ptr %i.agv, %i.aek
  br i1 %i.agw, label %.body338, label %.body338.sink.split

.body338.sink.split:                              ; preds = %bb.el, %bb.ed
  %.sink921 = phi ptr [ %i.aev, %bb.ed ], [ %i.agv, %bb.el ]
  %.pn69.ph = phi { ptr, i32 } [ %i.aeu, %bb.ed ], [ %i.agu, %bb.el ]
  %i.agx = load i64, ptr %i.aek, align 8, !tbaa !33
  %i.agy = add i64 %i.agx, 1
  call void @_ZdlPvm(ptr noundef %.sink921, i64 noundef %i.agy) #33
  br label %.body338

.body338:                                         ; preds = %.body338.sink.split, %bb.el, %bb.ed
  %.pn69 = phi { ptr, i32 } [ %i.aeu, %bb.ed ], [ %i.agu, %bb.el ], [ %.pn69.ph, %.body338.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %.body328

.body328:                                         ; preds = %bb.ej, %bb.dx, %bb.dw, %.body338, %bb.ek
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %.body338 ], [ %i.agt, %bb.ek ], [ %i.ags, %bb.ej ], [ %i.adh, %bb.dx ], [ %i.adh, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %23) #30
  br label %bb.em

bb.em:                                            ; preds = %.body328, %bb.ei
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %.body328 ], [ %i.agr, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.et

bb.en:                                            ; preds = %bb.da, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit348, %bb.ab
  %i.agz = load ptr, ptr %12, align 8, !tbaa !321 ; 3 uses
  %i.aha = load ptr, ptr %i.ei, align 8, !tbaa !323 ; 2 uses
  %.not4.i.i.i352 = icmp eq ptr %i.agz, %i.aha
  br i1 %.not4.i.i.i352, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i360, label %.lr.ph.i.i.i353

.lr.ph.i.i.i353:                                  ; preds = %bb.en, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i356
  %.05.i.i.i354 = phi ptr [ %i.ahg, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i356 ], [ %i.agz, %bb.en ] ; 3 uses
  %i.ahb = load ptr, ptr %.05.i.i.i354, align 8, !tbaa !27 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.05.i.i.i354, i64 16 ; 2 uses
  %i.ahd = icmp eq ptr %i.ahb, %i.ahc
  br i1 %i.ahd, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i356, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i355: ; preds = %.lr.ph.i.i.i353
  %i.ahe = load i64, ptr %i.ahc, align 8, !tbaa !33
  %i.ahf = add i64 %i.ahe, 1
  call void @_ZdlPvm(ptr noundef %i.ahb, i64 noundef %i.ahf) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i356

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i356: ; preds = %.lr.ph.i.i.i353, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i355
  %i.ahg = getelementptr inbounds nuw i8, ptr %.05.i.i.i354, i64 32 ; 2 uses
  %.not.i.i.i357 = icmp eq ptr %i.ahg, %i.aha
  br i1 %.not.i.i.i357, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i358, label %.lr.ph.i.i.i353, !llvm.loop !324
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE9push_backERKS7_:bb.a
; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser11set_dup_rowERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERNS_3CmdEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(432) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = sext i32 %3 to i64                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !450, !noalias !1182 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !451, !noalias !1182
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !446, !noalias !1182 ; 2 uses
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 7
  %i.o = add nsw i64 %i.n, %i.d                   ; 7 uses
  %i.p = icmp sgt i64 %i.o, -1
  br i1 %i.p, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.q = icmp samesign ult i64 %i.o, 4
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds [128 x i8], ptr %i.f, i64 %i.d ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load i32, ptr %i.s, align 8, !tbaa !674
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 84
  %i.v = load i32, ptr %i.u, align 4, !tbaa !684
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.w = lshr i64 %i.o, 2                         ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !456, !noalias !1182 ; 2 uses
  %i.z = and i64 %i.o, 3
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !674
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 84
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !684
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.af = ashr i64 %i.o, 2                        ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !456, !noalias !1182 ; 2 uses
  %i.ai = and i64 %i.o, 3
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !674
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 84
  %i.an = load i32, ptr %i.am, align 4, !tbaa !684
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = phi ptr [ %i.y, %bb.d ], [ %i.ah, %bb.e ]
  %i.ap = phi i32 [ %i.ae, %bb.d ], [ %i.an, %bb.e ]
  %i.aq = phi i32 [ %i.ac, %bb.d ], [ %i.al, %bb.e ]
  %i.ar = phi i64 [ %i.w, %bb.d ], [ %i.af, %bb.e ]
  %i.as = shl nsw i64 %i.ar, 2
  %i.at = sub nsw i64 %i.o, %i.as
  %i.au = getelementptr inbounds [128 x i8], ptr %i.ao, i64 %i.at
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i:        ; preds = %bb.f, %bb.c
  %i.av = phi i32 [ %i.ap, %bb.f ], [ %i.v, %bb.c ]
  %i.aw = phi i32 [ %i.aq, %bb.f ], [ %i.t, %bb.c ]
  %storemerge.i.i.i.i.i23 = phi ptr [ %i.au, %bb.f ], [ %i.r, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i23, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ay, ptr %4, align 8, !tbaa !123, !alias.scope !1191
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !27, !noalias !1188 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i23, i64 96
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !32, !noalias !1188 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30, !noalias !1191
  store i64 %i.bb, ptr %i.c, align 8, !tbaa !124, !noalias !1191
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i
  %i.bd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.bd, ptr %4, align 8, !tbaa !27, !alias.scope !1191
  %i.be = load i64, ptr %i.c, align 8, !tbaa !124, !noalias !1191
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !33, !alias.scope !1191
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i
  %i.bf = phi ptr [ %i.bd, %.noexc.i.i.i ], [ %i.ay, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i ] ; 2 uses
  switch i64 %i.bb, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN2PP3Cmd12get_filenameB5cxx11Ei.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !33
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !33
  br label %_ZN2PP3Cmd12get_filenameB5cxx11Ei.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.az, i64 %i.bb, i1 false)
  br label %_ZN2PP3Cmd12get_filenameB5cxx11Ei.exit

_ZN2PP3Cmd12get_filenameB5cxx11Ei.exit:           ; preds = %._crit_edge.i.i.i.i, %bb.g, %bb.h
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !124, !noalias !1191 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !32, !alias.scope !1191
  %i.bj = load ptr, ptr %4, align 8, !tbaa !27, !alias.scope !1191
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30, !noalias !1191
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !323 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN2PP3Cmd12get_filenameB5cxx11Ei.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 3 uses
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !123
  %i.bq = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.br = load i64, ptr %i.bi, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.br, ptr %i.b, align 8, !tbaa !124
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.i
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.ad    ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.bt, ptr %i.bm, align 8, !tbaa !27
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !124
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !33
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.i
  %i.bv = phi ptr [ %i.bt, %.noexc ], [ %i.bp, %bb.i ] ; 2 uses
  switch i64 %i.br, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bw = load i8, ptr %i.bq, align 1, !tbaa !33
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.k:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bq, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !32
  %i.bz = load ptr, ptr %i.bm, align 8, !tbaa !27
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !323
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store ptr %i.cc, ptr %i.bl, align 8, !tbaa !323
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.l:                                             ; preds = %_ZN2PP3Cmd12get_filenameB5cxx11Ei.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.ad

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.m unwind label %bb.ae

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i32 noundef %i.av)
          to label %bb.n unwind label %bb.af      ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  store ptr %i.cf, ptr %6, align 8, !tbaa !123, !alias.scope !1198
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 0, ptr %i.cg, align 8, !tbaa !32, !alias.scope !1198
  store i8 0, ptr %i.cf, align 8, !tbaa !33, !alias.scope !1198
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %8 = load ptr, ptr %7, align 8, !tbaa !142, !noalias !1198 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %8, null
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !1198 ; 2 uses
  %9 = icmp ugt ptr %8, %i.ci
  %.08.i.i.i = select i1 %9, ptr %8, ptr %i.ci    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !143, !noalias !1198 ; 2 uses
  %i.cl = ptrtoint ptr %.08.i.i.i to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ck, i64 noundef %i.cn)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %6, align 8, !tbaa !27, !alias.scope !1198 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cf
  br i1 %i.cr, label %.body, label %.body.sink.split

bb.q:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.p

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.q, %bb.o
  %i.ct = load ptr, ptr %i.bl, align 8, !tbaa !323 ; 6 uses
  %i.cu = load ptr, ptr %i.bn, align 8, !tbaa !325
  %.not.i.i25 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i.i25, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 3 uses
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !123
  %i.cw = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cf
  br i1 %i.cx, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.cy = load i64, ptr %i.cg, align 8, !tbaa !32 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cv, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.da, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !27
  %i.db = load i64, ptr %i.cf, align 8, !tbaa !33
  store i64 %i.db, ptr %i.cv, align 8, !tbaa !33
  %.pre = load i64, ptr %i.cg, align 8, !tbaa !32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dc = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.cy, %bb.s ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !32
  store ptr %i.cf, ptr %6, align 8, !tbaa !27
  store i64 0, ptr %i.cg, align 8, !tbaa !32
  %i.de = load ptr, ptr %i.bl, align 8, !tbaa !323
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store ptr %i.df, ptr %i.bl, align 8, !tbaa !323
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ag

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.t
  %.pre48 = load ptr, ptr %6, align 8, !tbaa !27  ; 2 uses
  %i.dg = icmp eq ptr %.pre48, %i.cf
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.dh = load i64, ptr %i.cf, align 8, !tbaa !33
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %.pre48, i64 noundef %i.di) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.dj = add nsw i32 %i.aw, -1
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !394, !noalias !1199 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !398, !noalias !1199
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !400, !noalias !1199
  %i.dr = ptrtoint ptr %i.dm to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 5
  %i.dv = add nsw i64 %i.du, %i.dk                ; 5 uses
  %i.dw = icmp sgt i64 %i.dv, -1
  br i1 %i.dw, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = icmp samesign ult i64 %i.dv, 16
  br i1 %i.dx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds [32 x i8], ptr %i.dm, i64 %i.dk
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit

bb.w:                                             ; preds = %bb.u
  %i.dz = lshr i64 %i.dv, 4
  br label %bb.y

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ea = ashr i64 %i.dv, 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.eb = phi i64 [ %i.dz, %bb.w ], [ %i.ea, %bb.x ] ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !338, !noalias !1199
  %i.ee = shl nsw i64 %i.eb, 4
  %i.ef = sub nsw i64 %i.dv, %i.ee
  %i.eg = getelementptr inbounds [32 x i8], ptr %i.ed, i64 %i.ef
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit: ; preds = %bb.v, %bb.y
  %storemerge.i.i.i.i = phi ptr [ %i.eg, %bb.y ], [ %i.dy, %bb.v ] ; 3 uses
  %i.eh = load ptr, ptr %i.bl, align 8, !tbaa !323 ; 8 uses
  %i.ei = load ptr, ptr %i.bn, align 8, !tbaa !325
  %.not.i27 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not.i27, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 3 uses
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !123
  %i.ek = load ptr, ptr %storemerge.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.em, ptr %i.a, align 8, !tbaa !124
  %i.en = icmp ugt i64 %i.em, 15
  br i1 %i.en, label %.noexc.i.i30, label %._crit_edge.i.i.i28

.noexc.i.i30:                                     ; preds = %bb.z
  %i.eo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc31 unwind label %bb.af  ; 2 uses

.noexc31:                                         ; preds = %.noexc.i.i30
  store ptr %i.eo, ptr %i.eh, align 8, !tbaa !27
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.ep, ptr %i.ej, align 8, !tbaa !33
  br label %._crit_edge.i.i.i28

._crit_edge.i.i.i28:                              ; preds = %.noexc31, %bb.z
  %i.eq = phi ptr [ %i.eo, %.noexc31 ], [ %i.ej, %bb.z ] ; 2 uses
  switch i64 %i.em, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i29
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i28
  %i.er = load i8, ptr %i.ek, align 1, !tbaa !33
  store i8 %i.er, ptr %i.eq, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i29

bb.ab:                                            ; preds = %._crit_edge.i.i.i28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eq, ptr align 1 %i.ek, i64 %i.em, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i29: ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i.i28
  %i.es = load i64, ptr %i.a, align 8, !tbaa !124 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %i.es, ptr %i.et, align 8, !tbaa !32
  %i.eu = load ptr, ptr %i.eh, align 8, !tbaa !27
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.es
  store i8 0, ptr %i.ev, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ew = load ptr, ptr %i.bl, align 8, !tbaa !323
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store ptr %i.ex, ptr %i.bl, align 8, !tbaa !323
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit33

bb.ac:                                            ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %storemerge.i.i.i.i)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit33 unwind label %bb.af

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i29, %bb.ac
  %i.ey = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ey, ptr %5, align 8, !tbaa !132
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.fa = getelementptr i8, ptr %i.ey, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %5, i64 %i.fb
  store ptr %i.ez, ptr %i.fc, align 8, !tbaa !132
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.fd, ptr %i.cd, align 8, !tbaa !132
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fe, align 8, !tbaa !132
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !27 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit33
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !33
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #33
end_hunk_7
begin_hunk_8_@_ZN2PP11PowerParser11set_dup_rowERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EERNS_3CmdEi:bb.a

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fe, align 8, !tbaa !132
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fl) #30
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.fm, ptr %5, align 8, !tbaa !132
  %i.fn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fo = getelementptr i8, ptr %i.fm, i64 -24
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds i8, ptr %5, i64 %i.fp
  store ptr %i.fn, ptr %i.fq, align 8, !tbaa !132
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.fr, align 8, !tbaa !134
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.fs) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ft = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.ay
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.fv = load i64, ptr %i.ay, align 8, !tbaa !33
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.ad:                                            ; preds = %bb.l, %.noexc.i.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ae:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %bb.ac, %.noexc.i.i30, %bb.m
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.t
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.cf
  br i1 %i.gc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ag, %bb.p
  %.sink = phi ptr [ %i.cq, %bb.p ], [ %i.gb, %bb.ag ]
  %.pn.ph = phi { ptr, i32 } [ %i.cp, %bb.p ], [ %i.ga, %bb.ag ]
  %i.gd = load i64, ptr %i.cf, align 8, !tbaa !33
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ge) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ag, %bb.p
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.p ], [ %i.ga, %bb.ag ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ah

bb.ah:                                            ; preds = %.body, %bb.af
  %.pn18 = phi { ptr, i32 } [ %i.fz, %bb.af ], [ %.pn, %.body ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #30
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.ah ], [ %i.fy, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %bb.ai ], [ %i.fx, %bb.ad ]
  %i.gf = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.ay
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.aj
  %i.gh = load i64, ptr %i.ay, align 8, !tbaa !33
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn18.pn.pn
}

declare void @_ZN2PP12Parser_utilsC1Ei(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) unnamed_addr #3

declare void @_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !810    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !807  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.s, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !321 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !323  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !324

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !321
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.m = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !325
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #33
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !839

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !810
  br label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.t = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !833
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #33
  br label %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP9to_stringB5cxx11Ed(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, double noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !132
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 16, ptr %i.e, align 8, !tbaa !1202
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %1)
          to label %_ZNSolsEd.exit unwind label %bb.e ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !123, !alias.scope !1209
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !32, !alias.scope !1209
  store i8 0, ptr %i.g, align 8, !tbaa !33, !alias.scope !1209
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %4 = load ptr, ptr %3, align 8, !tbaa !142, !noalias !1209 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1209 ; 2 uses
  %5 = icmp ugt ptr %4, %i.j
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.j     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !143, !noalias !1209 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !27, !alias.scope !1209 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.g
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.g, align 8, !tbaa !33, !alias.scope !1209
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #33
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEd.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.w = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !132
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.y = getelementptr i8, ptr %i.w, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !132
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !132
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !33
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !132
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #30
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aj) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

declare void @_ZN2PP4WordC1EdiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(128), double noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN2PP8VariableC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_bS6_(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #3

declare void @_ZN2PP4WordC1EiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5dequeIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(128), i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN2PP8FunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbiS6_S6_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8FunctionESt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !507 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8FunctionESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !1210

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8FunctionESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8FunctionESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i5 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8FunctionESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i15 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8FunctionESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8FunctionEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i15, ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.013.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.013.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8FunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !33
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !33
  %i.m = add i64 %i.l, 1
end_hunk_8
begin_hunk_9_@_ZN2PP11PowerParser11list_rb1_ssERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEPi:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !411
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !415
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bm, %i.bp
  %i.br = sdiv exact i64 %i.bq, 520
  %i.bs = add nsw i64 %i.bj, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !416
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !411
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.bv, %i.by
  %i.ca = sdiv exact i64 %i.bz, 520
  %i.cb = add nsw i64 %i.bs, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %.not = icmp slt i32 %i.a, %i.cc
  br i1 %.not, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !132
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 240
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i18 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i18, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19: ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !161
  %.not.i1.i.i20 = icmp eq i8 %i.cl, 0
  br i1 %.not.i1.i.i20, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 67
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cj)
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !132
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call noundef signext i8 %i.cq(ptr noundef nonnull align 8 dereferenceable(570) %i.cj, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22: ; preds = %bb.o, %bb.p
  %.0.i.i.i21 = phi i8 [ %i.cn, %bb.o ], [ %i.cr, %bb.p ]
  %i.cs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i8 noundef signext %.0.i.i.i21)
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs) ; 4 uses
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.212, i64 noundef 35) ; 0 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !132
  %i.cw = getelementptr i8, ptr %i.cv, i64 -24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %i.ct, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 240
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i23 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i23, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24

bb.q:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit22
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !161
  %.not.i1.i.i25 = icmp eq i8 %i.dc, 0
  br i1 %.not.i1.i.i25, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 67
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit27

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i24
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.da)
  %i.df = load ptr, ptr %i.da, align 8, !tbaa !132
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef signext i8 %i.dh(ptr noundef nonnull align 8 dereferenceable(570) %i.da, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit27

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit27: ; preds = %bb.r, %bb.s
  %.0.i.i.i26 = phi i8 [ %i.de, %bb.r ], [ %i.di, %bb.s ]
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, i8 noundef signext %.0.i.i.i26)
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj) ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !132
  %i.dm = getelementptr i8, ptr %i.dl, i64 -24
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds i8, ptr %i.dk, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 240
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i28 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i28, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i29

bb.t:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit27
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i29: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit27
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !161
  %.not.i1.i.i30 = icmp eq i8 %i.ds, 0
  br i1 %.not.i1.i.i30, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 67
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit32

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i29
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dq)
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !132
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = tail call noundef signext i8 %i.dx(ptr noundef nonnull align 8 dereferenceable(570) %i.dq, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit32

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit32: ; preds = %bb.u, %bb.v
  %.0.i.i.i31 = phi i8 [ %i.du, %bb.u ], [ %i.dy, %bb.v ]
  %i.dz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i8 noundef signext %.0.i.i.i31)
  %i.ea = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dz) ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.l
  tail call void @_ZN2PP11PowerParser14list_one_rb_ssERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %i.a)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit32, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit17
  ret void
}

declare void @_ZN2PP12Restartblock14list_conditionENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RNS1_18basic_stringstreamIcS4_S5_EE(ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser10print_lineEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2796) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !148
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114, !noalias !1512 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !115, !noalias !1512
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 432
  %i.q = add nsw i64 %i.p, %i.h                   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds [432 x i8], ptr %i.j, i64 %i.h
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !113, !noalias !1512
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.q
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24, !noalias !1512
  br label %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit:           ; preds = %bb.c, %bb.d
  %storemerge.i.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.s, %bb.c ]
  invoke void @_ZN2PP3Cmd17print_using_wordsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(432) %storemerge.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !123, !alias.scope !1521
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8, !tbaa !32, !alias.scope !1521
  store i8 0, ptr %i.x, align 8, !tbaa !33, !alias.scope !1521
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !142, !noalias !1521 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %5, null
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !1521 ; 2 uses
  %6 = icmp ugt ptr %5, %i.aa
  %.08.i.i.i = select i1 %6, ptr %5, ptr %i.aa    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !143, !noalias !1521 ; 2 uses
  %i.ad = ptrtoint ptr %.08.i.i.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.ac, i64 noundef %i.af)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !27, !alias.scope !1521 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.x
  br i1 %i.aj, label %.body, label %.body.sink.split

bb.h:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.al = load ptr, ptr %3, align 8, !tbaa !27
  %i.am = load i64, ptr %i.y, align 8, !tbaa !32
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.al, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !132
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.i
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load i8, ptr %i.au, align 8, !tbaa !161
  %.not.i1.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 67
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.at)
          to label %.noexc10 unwind label %bb.n

.noexc10:                                         ; preds = %bb.k
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !132
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef signext i8 %i.ba(ptr noundef nonnull align 8 dereferenceable(570) %i.at, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.n, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc10, %bb.j
  %.0.i.i.i = phi i8 [ %i.ax, %bb.j ], [ %i.bb, %.noexc10 ]
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext %.0.i.i.i)
          to label %.noexc12 unwind label %bb.n

.noexc12:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.n ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc12
  %i.be = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.x
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.bg = load i64, ptr %i.x, align 8, !tbaa !33
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.bi = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bi, ptr %2, align 8, !tbaa !132
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %2, i64 %i.bl
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !132
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !132
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bp, align 8, !tbaa !132
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !27 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !33
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bp, align 8, !tbaa !132
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bw) #30
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bx, ptr %2, align 8, !tbaa !132
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %2, i64 %i.ca
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !132
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !134
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cd) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  ret void

bb.m:                                             ; preds = %_ZNSt5dequeIN2PP3CmdESaIS1_EEixEm.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %.noexc12, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc10, %bb.k, %bb.i, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.x
  br i1 %i.ch, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.g
  %.sink = phi ptr [ %i.ai, %bb.g ], [ %i.cg, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.cf, %bb.n ]
  %i.ci = load i64, ptr %i.x, align 8, !tbaa !33
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cj) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.cf, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ce, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN2PP3Cmd17print_using_wordsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser10print_lineERNS_3CmdE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(432) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !148
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  invoke void @_ZN2PP3Cmd17print_using_wordsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(432) %1, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !123, !alias.scope !1528
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !32, !alias.scope !1528
  store i8 0, ptr %i.h, align 8, !tbaa !33, !alias.scope !1528
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %5 = load ptr, ptr %4, align 8, !tbaa !142, !noalias !1528 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %5, null
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1528 ; 2 uses
  %6 = icmp ugt ptr %5, %i.k
  %.08.i.i.i = select i1 %6, ptr %5, ptr %i.k     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !143, !noalias !1528 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !27, !alias.scope !1528 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.h
  br i1 %i.t, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.v = load ptr, ptr %3, align 8, !tbaa !27
  %i.w = load i64, ptr %i.i, align 8, !tbaa !32
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.v, i64 noundef %i.w)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !132
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 240
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.g
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !161
  %.not.i1.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 67
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ad)
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %bb.i
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !132
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef signext i8 %i.ak(ptr noundef nonnull align 8 dereferenceable(570) %i.ad, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.l, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc10, %bb.h
  %.0.i.i.i = phi i8 [ %i.ah, %bb.h ], [ %i.al, %.noexc10 ]
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i8 noundef signext %.0.i.i.i)
          to label %.noexc12 unwind label %bb.l

.noexc12:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.l ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc12
  %i.ao = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.h
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !33
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.as = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !132
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !132
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !132
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.az, align 8, !tbaa !132
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !33
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.az, align 8, !tbaa !132
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #30
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bh, ptr %2, align 8, !tbaa !132
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bj = getelementptr i8, ptr %i.bh, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %2, i64 %i.bk
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !132
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !134
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bn) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  ret void

bb.k:                                             ; preds = %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %.noexc12, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc10, %bb.i, %bb.g, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.h
  br i1 %i.br, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.l, %bb.e
  %.sink = phi ptr [ %i.s, %bb.e ], [ %i.bq, %bb.l ]
  %.pn.ph = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.bp, %bb.l ]
  %i.bs = load i64, ptr %i.h, align 8, !tbaa !33
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bt) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.l, %bb.e
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.bp, %bb.l ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.m

bb.m:                                             ; preds = %.body, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bo, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser15list_vars_startEv(ptr noundef nonnull align 8 dereferenceable(2796) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1080
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !123
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !32
  store i8 0, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %i.f, ptr noundef nonnull %i.b, i64 noundef 0)
          to label %.noexc13 unwind label %bb.h   ; 0 uses

.noexc13:                                         ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.j = load i32, ptr %i.i, align 8, !tbaa !422
  %i.k = and i32 %i.j, 3
  %.not.i.i.i = icmp eq i32 %i.k, 0
  %i.l = load i64, ptr %i.e, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.l
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !27
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef %i.m, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.h

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc13
  %i.n = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.p = load i64, ptr %i.b, align 8, !tbaa !33
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1096
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !123, !alias.scope !1535
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.t, align 8, !tbaa !32, !alias.scope !1535
  store i8 0, ptr %i.s, align 8, !tbaa !33, !alias.scope !1535
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %6 = load ptr, ptr %i.u, align 8, !tbaa !142, !noalias !1535 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %6, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.v = load ptr, ptr %7, align 8, !noalias !1535 ; 2 uses
  %8 = icmp ugt ptr %6, %i.v
  %.08.i.i.i = select i1 %8, ptr %6, ptr %i.v     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !143, !noalias !1535 ; 2 uses
  %i.y = ptrtoint ptr %.08.i.i.i to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.aa)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !27, !alias.scope !1535 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.af = load i64, ptr %i.s, align 8, !tbaa !33, !alias.scope !1535
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #33
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.b ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1568
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.b

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.a, %bb.c
  %i.ai = load ptr, ptr %2, align 8, !tbaa !27
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !32
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.ai, i64 noundef %i.aj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !132
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 240
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i56 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i56, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc58 unwind label %bb.i

.noexc58:                                         ; preds = %bb.d
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !161
  %.not.i1.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 67
  %i.au = load i8, ptr %i.at, align 1, !tbaa !33
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aq)
          to label %.noexc59 unwind label %bb.i

.noexc59:                                         ; preds = %bb.f
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !132
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef signext i8 %i.ax(ptr noundef nonnull align 8 dereferenceable(570) %i.aq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.i, !inline_history !166

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc59, %bb.e
  %.0.i.i.i57 = phi i8 [ %i.au, %bb.e ], [ %i.ay, %.noexc59 ]
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i8 noundef signext %.0.i.i.i57)
          to label %.noexc61 unwind label %bb.i

.noexc61:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.i ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc61
  %i.bb = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.s
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.bd = load i64, ptr %i.s, align 8, !tbaa !33
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bf, ptr %3, align 8, !tbaa !123
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !32
  store i8 0, ptr %i.bf, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bh, ptr %4, align 8, !tbaa !123
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !32
  store i8 0, ptr %i.bh, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bj, ptr %5, align 8, !tbaa !123
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bk, align 8, !tbaa !32
  store i8 0, ptr %i.bj, align 8, !tbaa !33
  invoke void @_ZN2PP11PowerParser12list_vars_ssENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_RNS1_18basic_stringstreamIcS4_S5_EE(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bl = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.bj
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.g
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !33
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %i.bp = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bh
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.br = load i64, ptr %i.bh, align 8, !tbaa !33
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.bt = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bf
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.bv = load i64, ptr %i.bf, align 8, !tbaa !33
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i32 0, ptr %i.bx, align 8, !tbaa !587
  ret void

bb.h:                                             ; preds = %.noexc13, %._crit_edge.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.b
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.h
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !33
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %common.resume

bb.i:                                             ; preds = %.noexc61, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc59, %bb.f, %bb.d, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.s
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.i
  %i.cg = load i64, ptr %i.s, align 8, !tbaa !33
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.bj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.j
  %i.cl = load i64, ptr %i.bj, align 8, !tbaa !33
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

end_hunk_9
begin_hunk_10_@_ZN2PP11PowerParser13list_funcs_ssENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RNS1_18basic_stringstreamIcS4_S5_EE:bb.a
    i64 0, label %_ZN2PP8Function15get_descriptionB5cxx11Ev.exit
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i93
  %i.fj = load i8, ptr %i.fc, align 1, !tbaa !33
  store i8 %i.fj, ptr %i.fi, align 1, !tbaa !33
  br label %_ZN2PP8Function15get_descriptionB5cxx11Ev.exit

bb.aa:                                            ; preds = %._crit_edge.i.i.i93
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fi, ptr align 1 %i.fc, i64 %i.fe, i1 false)
  br label %_ZN2PP8Function15get_descriptionB5cxx11Ev.exit

_ZN2PP8Function15get_descriptionB5cxx11Ev.exit:   ; preds = %._crit_edge.i.i.i93, %bb.z, %bb.aa
  %i.fk = load i64, ptr %i.d, align 8, !tbaa !124, !noalias !1541 ; 2 uses
  store i64 %i.fk, ptr %i.de, align 8, !tbaa !32, !alias.scope !1541
  %i.fl = load ptr, ptr %14, align 8, !tbaa !27, !alias.scope !1541
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fk
  store i8 0, ptr %i.fm, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30, !noalias !1541
  br i1 %i.df, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZN2PP8Function15get_descriptionB5cxx11Ev.exit
  invoke void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.bg unwind label %bb.bi

bb.ab:                                            ; preds = %bb.f
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ai
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.ab
  %i.fq = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.cd

bb.ac:                                            ; preds = %bb.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  %i.ft = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.aq
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.ac
  %i.fv = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.cd

bb.ad:                                            ; preds = %bb.l
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.be
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.ad
  %i.ga = load i64, ptr %i.be, align 8, !tbaa !33
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.cd

bb.ae:                                            ; preds = %bb.o
  %i.gc = landingpad { ptr, i32 }
          cleanup
  %i.gd = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.bs
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ae
  %i.gf = load i64, ptr %i.bs, align 8, !tbaa !33
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.cd

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.ag:                                            ; preds = %.noexc.i90
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

bb.ah:                                            ; preds = %bb.t
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ai:                                            ; preds = %bb.u
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.aj:                                            ; preds = %.noexc.i.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.ak:                                            ; preds = %.noexc.i.i94
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

.lr.ph:                                           ; preds = %_ZN2PP8Function15get_descriptionB5cxx11Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.015265 = phi i32 [ %i.jp, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ 0, %_ZN2PP8Function15get_descriptionB5cxx11Ev.exit ] ; 2 uses
  switch i32 %.015265, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit [
    i32 0, label %bb.al
    i32 1, label %bb.aq
    i32 2, label %bb.ay
    i32 3, label %bb.bc
  ]

bb.al:                                            ; preds = %.lr.ph
  %i.gn = load ptr, ptr %i.dg, align 8, !tbaa !323 ; 8 uses
  %i.go = load ptr, ptr %i.dh, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.gn, %i.go
  br i1 %.not.i, label %.invoke, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 3 uses
  store ptr %i.gp, ptr %i.gn, align 8, !tbaa !123
  %i.gq = load ptr, ptr %10, align 8, !tbaa !27   ; 2 uses
  %i.gr = load i64, ptr %i.cz, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 %i.gr, ptr %i.c, align 8, !tbaa !124
  %i.gs = icmp ugt i64 %i.gr, 15
  br i1 %i.gs, label %.noexc.i.i109, label %._crit_edge.i.i.i108

.noexc.i.i109:                                    ; preds = %bb.am
  %i.gt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.gn, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc110 unwind label %bb.ap ; 2 uses

.noexc110:                                        ; preds = %.noexc.i.i109
  store ptr %i.gt, ptr %i.gn, align 8, !tbaa !27
  %i.gu = load i64, ptr %i.c, align 8, !tbaa !124
  store i64 %i.gu, ptr %i.gp, align 8, !tbaa !33
  br label %._crit_edge.i.i.i108

._crit_edge.i.i.i108:                             ; preds = %.noexc110, %bb.am
  %i.gv = phi ptr [ %i.gt, %.noexc110 ], [ %i.gp, %bb.am ] ; 2 uses
  switch i64 %i.gr, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i108
  %i.gw = load i8, ptr %i.gq, align 1, !tbaa !33
  store i8 %i.gw, ptr %i.gv, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ao:                                            ; preds = %._crit_edge.i.i.i108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr align 1 %i.gq, i64 %i.gr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i108
  %i.gx = load i64, ptr %i.c, align 8, !tbaa !124 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !32
  %i.gz = load ptr, ptr %i.gn, align 8, !tbaa !27
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gx
  store i8 0, ptr %i.ha, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.hb = load ptr, ptr %i.dg, align 8, !tbaa !323
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  store ptr %i.hc, ptr %i.dg, align 8, !tbaa !323
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.ap:                                            ; preds = %.invoke, %.noexc.i.i134, %.noexc.i.i127, %.noexc.i.i109
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.aq:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  store ptr %i.di, ptr %15, align 8, !tbaa !123, !alias.scope !1550
  store i64 0, ptr %i.dj, align 8, !tbaa !32, !alias.scope !1550
  store i8 0, ptr %i.di, align 8, !tbaa !33, !alias.scope !1550
  %i.he = load ptr, ptr %i.dk, align 8, !tbaa !142, !noalias !1550 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.he, null
  %18 = load ptr, ptr %i.dl, align 8, !noalias !1550 ; 2 uses
  %19 = icmp ugt ptr %i.he, %18
  %.08.i.i.i = select i1 %19, ptr %i.he, ptr %18  ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i112 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i112, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hf = load ptr, ptr %i.dm, align 8, !tbaa !143, !noalias !1550 ; 2 uses
  %i.hg = ptrtoint ptr %.08.i.i.i to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.hf, i64 noundef %i.hi)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %bb.at, %bb.ar
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = load ptr, ptr %15, align 8, !tbaa !27, !alias.scope !1550 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.di
  br i1 %i.hm, label %.body, label %.body.sink.split

bb.at:                                            ; preds = %bb.aq
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.dn)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.as

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.at, %bb.ar
  %i.hn = load ptr, ptr %i.dg, align 8, !tbaa !323 ; 7 uses
  %i.ho = load ptr, ptr %i.dh, align 8, !tbaa !325
  %.not.i.i113 = icmp eq ptr %i.hn, %i.ho
  br i1 %.not.i.i113, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 3 uses
  store ptr %i.hp, ptr %i.hn, align 8, !tbaa !123
  %i.hq = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.di
  br i1 %i.hr, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114

bb.av:                                            ; preds = %bb.au
  %i.hs = load i64, ptr %i.dj, align 8, !tbaa !32 ; 3 uses
  %i.ht = icmp ult i64 %i.hs, 16
  call void @llvm.assume(i1 %i.ht)
  %i.hu = add nuw nsw i64 %i.hs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hp, ptr noundef nonnull align 8 dereferenceable(1) %i.di, i64 %i.hu, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit117.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114: ; preds = %bb.au
  store ptr %i.hq, ptr %i.hn, align 8, !tbaa !27
  %i.hv = load i64, ptr %i.di, align 8, !tbaa !33
  store i64 %i.hv, ptr %i.hp, align 8, !tbaa !33
  %.pre274.a = load i64, ptr %i.dj, align 8, !tbaa !32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit117.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit117.thread: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114
  %i.hw = phi i64 [ %.pre274.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114 ], [ %i.hs, %bb.av ]
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !32
  store ptr %i.di, ptr %15, align 8, !tbaa !27
  store i64 0, ptr %i.dj, align 8, !tbaa !32
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  store ptr %i.hy, ptr %i.dg, align 8, !tbaa !323
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

bb.aw:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.hn, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit117 unwind label %bb.ax

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit117: ; preds = %bb.aw
  %.pre275 = load ptr, ptr %15, align 8, !tbaa !27 ; 2 uses
  %i.hz = icmp eq ptr %.pre275, %i.di
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit117
  %i.ia = load i64, ptr %i.di, align 8, !tbaa !33
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %.pre275, i64 noundef %i.ib) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit117, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit117.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %15, align 8, !tbaa !27   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.di
  br i1 %i.ie, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ax, %bb.as
  %.sink = phi ptr [ %i.hl, %bb.as ], [ %i.id, %bb.ax ]
  %.pn40.ph = phi { ptr, i32 } [ %i.hk, %bb.as ], [ %i.ic, %bb.ax ]
  %i.if = load i64, ptr %i.di, align 8, !tbaa !33
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ig) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ax, %bb.as
  %.pn40 = phi { ptr, i32 } [ %i.hk, %bb.as ], [ %i.ic, %bb.ax ], [ %.pn40.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.bj

bb.ay:                                            ; preds = %.lr.ph
  %i.ih = load ptr, ptr %i.dg, align 8, !tbaa !323 ; 8 uses
  %i.ii = load ptr, ptr %i.dh, align 8, !tbaa !325
  %.not.i124 = icmp eq ptr %i.ih, %i.ii
  br i1 %.not.i124, label %.invoke, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 3 uses
  store ptr %i.ij, ptr %i.ih, align 8, !tbaa !123
  %i.ik = load ptr, ptr %13, align 8, !tbaa !27   ; 2 uses
  %i.il = load i64, ptr %i.dc, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.il, ptr %i.b, align 8, !tbaa !124
  %i.im = icmp ugt i64 %i.il, 15
  br i1 %i.im, label %.noexc.i.i127, label %._crit_edge.i.i.i125

.noexc.i.i127:                                    ; preds = %bb.az
  %i.in = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ih, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc128 unwind label %bb.ap ; 2 uses

.noexc128:                                        ; preds = %.noexc.i.i127
  store ptr %i.in, ptr %i.ih, align 8, !tbaa !27
  %i.io = load i64, ptr %i.b, align 8, !tbaa !124
  store i64 %i.io, ptr %i.ij, align 8, !tbaa !33
  br label %._crit_edge.i.i.i125

._crit_edge.i.i.i125:                             ; preds = %.noexc128, %bb.az
  %i.ip = phi ptr [ %i.in, %.noexc128 ], [ %i.ij, %bb.az ] ; 2 uses
  switch i64 %i.il, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i126
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i.i125
  %i.iq = load i8, ptr %i.ik, align 1, !tbaa !33
  store i8 %i.iq, ptr %i.ip, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i126

bb.bb:                                            ; preds = %._crit_edge.i.i.i125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ip, ptr align 1 %i.ik, i64 %i.il, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i126: ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i.i125
  %i.ir = load i64, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !32
  %i.it = load ptr, ptr %i.ih, align 8, !tbaa !27
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ir
  store i8 0, ptr %i.iu, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.iv = load ptr, ptr %i.dg, align 8, !tbaa !323
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  store ptr %i.iw, ptr %i.dg, align 8, !tbaa !323
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.bc:                                            ; preds = %.lr.ph
  %i.ix = load ptr, ptr %i.dg, align 8, !tbaa !323 ; 8 uses
  %i.iy = load ptr, ptr %i.dh, align 8, !tbaa !325
  %.not.i131 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not.i131, label %.invoke, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 3 uses
  store ptr %i.iz, ptr %i.ix, align 8, !tbaa !123
  %i.ja = load ptr, ptr %14, align 8, !tbaa !27   ; 2 uses
  %i.jb = load i64, ptr %i.de, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.jb, ptr %i.a, align 8, !tbaa !124
  %i.jc = icmp ugt i64 %i.jb, 15
  br i1 %i.jc, label %.noexc.i.i134, label %._crit_edge.i.i.i132

.noexc.i.i134:                                    ; preds = %bb.bd
  %i.jd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc135 unwind label %bb.ap ; 2 uses

.noexc135:                                        ; preds = %.noexc.i.i134
  store ptr %i.jd, ptr %i.ix, align 8, !tbaa !27
  %i.je = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.je, ptr %i.iz, align 8, !tbaa !33
  br label %._crit_edge.i.i.i132

._crit_edge.i.i.i132:                             ; preds = %.noexc135, %bb.bd
  %i.jf = phi ptr [ %i.jd, %.noexc135 ], [ %i.iz, %bb.bd ] ; 2 uses
  switch i64 %i.jb, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i133
  ]

bb.be:                                            ; preds = %._crit_edge.i.i.i132
  %i.jg = load i8, ptr %i.ja, align 1, !tbaa !33
  store i8 %i.jg, ptr %i.jf, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i133

bb.bf:                                            ; preds = %._crit_edge.i.i.i132
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jf, ptr align 1 %i.ja, i64 %i.jb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i133: ; preds = %bb.bf, %bb.be, %._crit_edge.i.i.i132
  %i.jh = load i64, ptr %i.a, align 8, !tbaa !124 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i64 %i.jh, ptr %i.ji, align 8, !tbaa !32
  %i.jj = load ptr, ptr %i.ix, align 8, !tbaa !27
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jh
  store i8 0, ptr %i.jk, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
end_hunk_10
begin_hunk_11_@_ZN2PP11PowerParser16list_wt_cmdsf_ssERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %.not.i.i.i69, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70

bb.ab:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68
  call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !161
  %.not.i1.i.i71 = icmp eq i8 %i.gb, 0
  br i1 %.not.i1.i.i71, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 67
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fz)
  %i.ge = load ptr, ptr %i.fz, align 8, !tbaa !132
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = call noundef signext i8 %i.gg(ptr noundef nonnull align 8 dereferenceable(570) %i.fz, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i72 = phi i8 [ %i.gd, %bb.ac ], [ %i.gh, %bb.ad ]
  %i.gi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext %.0.i.i.i72)
  %i.gj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gi) ; 0 uses
  %i.gk = load ptr, ptr %i.b, align 8, !tbaa !363, !noalias !1567 ; 2 uses
  %i.gl = load ptr, ptr %i.af, align 8, !tbaa !372, !noalias !1567
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = sdiv exact i64 %i.go, 568
  %i.gq = add nsw i64 %i.gp, %indvars.iv          ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73
  %i.gs = getelementptr inbounds nuw [568 x i8], ptr %i.gk, i64 %indvars.iv
  br label %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit32

bb.af:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73
  %i.gt = load ptr, ptr %i.e, align 8, !tbaa !368, !noalias !1567
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gq
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !373, !noalias !1567
  br label %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit32

_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit32:    ; preds = %bb.ae, %bb.af
  %storemerge.i.i.i.i31 = phi ptr [ %i.gv, %bb.af ], [ %i.gs, %bb.ae ]
  call void @_ZN2PP8Whenthen13list_cmdsf_ssERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(568) %storemerge.i.i.i.i31, ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.gw = load ptr, ptr %i.ae, align 8, !tbaa !132
  %i.gx = getelementptr i8, ptr %i.gw, i64 -24
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds i8, ptr %i.ae, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 240
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i74 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i74, label %bb.ag, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75

bb.ag:                                            ; preds = %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit32
  call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75: ; preds = %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !161
  %.not.i1.i.i76 = icmp eq i8 %i.hd, 0
  br i1 %.not.i1.i.i76, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 67
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hb)
  %i.hg = load ptr, ptr %i.hb, align 8, !tbaa !132
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = call noundef signext i8 %i.hi(ptr noundef nonnull align 8 dereferenceable(570) %i.hb, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78: ; preds = %bb.ah, %bb.ai
  %.0.i.i.i77 = phi i8 [ %i.hf, %bb.ah ], [ %i.hj, %bb.ai ]
  %i.hk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext %.0.i.i.i77)
  %i.hl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hk) ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !1570

bb.aj:                                            ; preds = %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.ai
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.aj
  %i.hp = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  %i.hr = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.ag
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.ht = load i64, ptr %i.ag, align 8, !tbaa !33
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  resume { ptr, i32 } %i.hm

.loopexit:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit48
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser19list_wt_cmdsf_startEv(ptr noundef nonnull align 8 dereferenceable(2796) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !32
  store i8 0, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.a    ; 0 uses

.noexc4:                                          ; preds = %._crit_edge.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.i = load i32, ptr %i.h, align 8, !tbaa !422
  %i.j = and i32 %i.i, 3
  %.not.i.i.i = icmp eq i32 %i.j, 0
  %i.k = load i64, ptr %i.d, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.k
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !27
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef %i.l, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.a

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc4
  %i.m = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  %i.o = load i64, ptr %i.a, align 8, !tbaa !33
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1080
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @_ZN2PP11PowerParser16list_wt_cmdsf_ssERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i32 0, ptr %i.r, align 8, !tbaa !587
  ret void

bb.a:                                             ; preds = %.noexc4, %._crit_edge.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.a
  %i.v = load i64, ptr %i.a, align 8, !tbaa !33
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2PP11PowerParser15get_ssfout_lineERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !123, !alias.scope !1577
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !32, !alias.scope !1577
  store i8 0, ptr %i.a, align 8, !tbaa !33, !alias.scope !1577
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %3 = load ptr, ptr %i.c, align 8, !tbaa !142, !noalias !1577 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %3, null
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.d = load ptr, ptr %4, align 8, !noalias !1577 ; 2 uses
  %5 = icmp ugt ptr %3, %i.d
  %.08.i.i.i = select i1 %5, ptr %3, ptr %i.d     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143, !noalias !1577 ; 2 uses
  %i.g = ptrtoint ptr %.08.i.i.i to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.i)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !27, !alias.scope !1577 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !33, !alias.scope !1577
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1176
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull @.str, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.u = load i64, ptr %i.b, align 8, !tbaa !32
  %i.v = trunc i64 %i.u to i32                    ; 3 uses
  %i.w = load i32, ptr %i.q, align 8, !tbaa !4    ; 2 uses
  %.not.i = icmp slt i32 %i.w, %i.v               ; 2 uses
  br i1 %.not.i, label %.preheader.i, label %_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit

.preheader.i:                                     ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = sext i32 %i.w to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.y, %.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !33  ; 2 uses
  switch i8 %i.ab, label %bb.g [
    i8 10, label %bb.f
    i8 13, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.ac = trunc nsw i64 %indvars.iv.i to i32
  %i.ad = add nsw i32 %i.ac, 1
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !32  ; 4 uses
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.x                 ; 2 uses
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.ai)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.aj = load i64, ptr %i.x, align 8
  %i.ak = select i1 %i.ah, i64 15, i64 %i.aj
  %i.al = icmp ugt i64 %i.af, %i.ak
  br i1 %i.al, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ae, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc4 unwind label %.loopexit

.noexc4:                                          ; preds = %bb.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i: ; preds = %.noexc4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.am = phi ptr [ %.pre.i.i.i, %.noexc4 ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  store i8 %i.ab, ptr %i.an, align 1, !tbaa !33
  store i64 %i.af, ptr %i.r, align 8, !tbaa !32
  %i.ao = load ptr, ptr %1, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.af
  store i8 0, ptr %i.ap, align 1, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i, %bb.e
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %lftr.wideiv.i, %i.v
  br i1 %exitcond.not.i, label %.sink.split.i, label %bb.e, !llvm.loop !437

.sink.split.i:                                    ; preds = %bb.j, %bb.f
  %.sink.i = phi i32 [ %i.ad, %bb.f ], [ %i.v, %bb.j ]
  store i32 %.sink.i, ptr %i.q, align 8, !tbaa !4
  br label %_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aq = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.as = load i64, ptr %i.a, align 8, !tbaa !33
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume

_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit: ; preds = %.sink.split.i, %.noexc
  %i.au = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.a
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !33
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %.not.i
}

declare void @_ZN2PP4Comm9broadcastEPci(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser13chars_to_vstrEPcRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEii(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(2796) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = sext i32 %4 to i64                       ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #32 ; 5 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = zext i32 %4 to i64
  %wide.trip.count83 = zext nneg i32 %3 to i64
  %i.k = icmp sgt i32 %4, 0
  %i.l = icmp sgt i32 %4, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv80 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = trunc nuw nsw i64 %indvars.iv80 to i32   ; 2 uses
  %i.n = mul i32 %4, %i.m                         ; 3 uses
  %i.o = add i32 %4, %i.n
  %i.p = add i32 %i.n, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.p)
  %i.q = mul i32 %4, %i.m
  %i.r = xor i32 %i.q, -1
  %i.s = add i32 %smax, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1
  %i.v = sext i32 %i.n to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 %i.u, i1 false), !tbaa !33
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %bb.b
  br i1 %i.l, label %.lr.ph, label %split

end_hunk_11
