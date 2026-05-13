inline.NumInlined: 328
inline.NumDeleted: 161
begin_hunk_0_@_ZN6apache6thrift9transport11THttpClientC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiS8_St10shared_ptrINS0_14TConfigurationEE:bb.a
bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #18
  br label %_ZNSt12__shared_ptrIN6apache6thrift14TConfigurationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22

_ZNSt12__shared_ptrIN6apache6thrift14TConfigurationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22: ; preds = %_ZNSt12__shared_ptrIN6apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.ac
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN6apache6thrift9transport11THttpClientE, i64 16), ptr %0, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !21
  %i.bz = load ptr, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.cb, ptr %i.b, align 8, !tbaa !28
  %i.cc = icmp ugt i64 %i.cb, 15
  br i1 %i.cc, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12__shared_ptrIN6apache6thrift14TConfigurationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22
  %i.cd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.al    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.cd, ptr %i.bx, align 8, !tbaa !24
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.ce, ptr %i.by, align 8, !tbaa !12
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12__shared_ptrIN6apache6thrift14TConfigurationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22
  %i.cf = phi ptr [ %i.cd, %.noexc ], [ %i.by, %_ZNSt12__shared_ptrIN6apache6thrift14TConfigurationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22 ] ; 2 uses
  switch i64 %i.cb, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i
  %i.cg = load i8, ptr %i.bz, align 1, !tbaa !12
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !12
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cf, ptr align 1 %i.bz, i64 %i.cb, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !27
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store i8 0, ptr %i.ck, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !21
  %i.cn = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !28
  %i.cq = icmp ugt i64 %i.cp, 15
  br i1 %i.cq, label %.noexc.i24, label %._crit_edge.i.i23

.noexc.i24:                                       ; preds = %bb.af
  %i.cr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc25 unwind label %bb.am  ; 2 uses

.noexc25:                                         ; preds = %.noexc.i24
  store ptr %i.cr, ptr %i.cl, align 8, !tbaa !24
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.cs, ptr %i.cm, align 8, !tbaa !12
  br label %._crit_edge.i.i23

._crit_edge.i.i23:                                ; preds = %.noexc25, %bb.af
  %i.ct = phi ptr [ %i.cr, %.noexc25 ], [ %i.cm, %bb.af ] ; 2 uses
  switch i64 %i.cp, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %bb.ai
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i23
  %i.cu = load i8, ptr %i.cn, align 1, !tbaa !12
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !12
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cn, i64 %i.cp, i1 false)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i23
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !27
  %i.cx = load ptr, ptr %i.cl, align 8, !tbaa !24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  store i8 0, ptr %i.cy, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

bb.aj:                                            ; preds = %_ZNSt10shared_ptrIN6apache6thrift14TConfigurationEEC2ERKS3_.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6apache6thrift14TConfigurationELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  call void @_ZNSt12__shared_ptrIN6apache6thrift9transport10TTransportELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  br label %.body.thread

.body.thread:                                     ; preds = %bb.aj, %bb.d
  %.pn.ph = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.cz, %bb.aj ]
  call void @_ZNSt12__shared_ptrIN6apache6thrift14TConfigurationELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  br label %bb.an

bb.ak:                                            ; preds = %bb.a
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6apache6thrift14TConfigurationELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 264) #19
  br label %bb.an

bb.al:                                            ; preds = %.noexc.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.am:                                            ; preds = %.noexc.i24
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %i.bx, align 8, !tbaa !24 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.by
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.am
  %i.df = load i64, ptr %i.by, align 8, !tbaa !12
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.al
  %.pn10 = phi { ptr, i32 } [ %i.db, %bb.al ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dc, %bb.am ]
  call void @_ZN6apache6thrift9transport14THttpTransportD2Ev(ptr noundef nonnull align 8 dereferenceable(316) %0) #18
  br label %bb.an

bb.an:                                            ; preds = %.body.thread, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.da, %bb.ak ], [ %.pn.ph, %.body.thread ]
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN6apache6thrift9transport7TSocketC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt10shared_ptrINS0_14TConfigurationEE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6apache6thrift9transport11THttpClientD2Ev(ptr noundef nonnull align 8 dereferenceable(384) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN6apache6thrift9transport11THttpClientE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !12
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !12
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  tail call void @_ZN6apache6thrift9transport14THttpTransportD2Ev(ptr noundef nonnull align 8 dereferenceable(316) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6apache6thrift9transport11THttpClientD0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6apache6thrift9transport11THttpClientD1Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6apache6thrift9transport11THttpClient11parseHeaderEPc(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(384) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::algorithm::is_iequal", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.std::locale", align 8       ; 7 uses
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !37
  %i.c = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 58) #23 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %i.f = invoke noundef zeroext i1 @_ZN5boost9algorithm12istarts_withIPcA18_cEEbRKT_RKT0_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %i.g = invoke noundef zeroext i1 @_ZN5boost9algorithm9ends_withIPcA8_cNS0_9is_iequalEEEbRKT_RKT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(8) @.str.1, ptr noundef nonnull %2)
          to label %bb.e unwind label %.body

.body:                                            ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #18
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %i.g, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 281
  store i8 1, ptr %i.i, align 1, !tbaa !38
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %i.k = invoke noundef zeroext i1 @_ZN5boost9algorithm12istarts_withIPcA15_cEEbRKT_RKT0_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %i.k, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 281
  store i8 0, ptr %i.l, align 1, !tbaa !38
  %i.m = call i64 @__isoc23_strtol(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 10) #18, !inline_history !52
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %i.n, ptr %i.o, align 8, !tbaa !53
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.n

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  ret void

bb.n:                                             ; preds = %bb.k, %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.h, %.body ], [ %i.p, %bb.k ], [ %i.j, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost9algorithm12istarts_withIPcA18_cEEbRKT_RKT0_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::algorithm::is_iequal", align 8 ; 5 uses
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %i.b = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %i.d = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %1) #23 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = icmp samesign ne i64 %i.b, 0
  %i.g = icmp samesign ne i64 %i.d, 0
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.023.i = phi ptr [ %i.ag, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.01322.i = phi ptr [ %i.af, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.i = load i8, ptr %.01322.i, align 1, !tbaa !12
  %i.j = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #18
  %i.k = load ptr, ptr %3, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 3 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.not.i.i.i.i, label %.invoke, label %_ZSt7toupperIcET_S0_RKSt6locale.exit.i.i

.invoke:                                          ; preds = %.noexc4, %.lr.ph.i
  invoke void @_ZSt16__throw_bad_castv() #21
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt7toupperIcET_S0_RKSt6locale.exit.i.i:         ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext %i.i)
          to label %.noexc4 unwind label %.loopexit, !inline_history !64

.noexc4:                                          ; preds = %_ZSt7toupperIcET_S0_RKSt6locale.exit.i.i
  %i.t = load i8, ptr %.023.i, align 1, !tbaa !12
  %i.u = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #18
  %i.v = load ptr, ptr %3, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62   ; 3 uses
  %.not.not.i.i3.i.i = icmp eq ptr %i.z, null
  br i1 %.not.not.i.i3.i.i, label %.invoke, label %_ZNK5boost9algorithm9is_iequalclIccEEbRKT_RKT0_.exit.i

_ZNK5boost9algorithm9is_iequalclIccEEbRKT_RKT0_.exit.i: ; preds = %.noexc4
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.z, i8 noundef signext %i.t)
          to label %.noexc6 unwind label %.loopexit, !inline_history !64

.noexc6:                                          ; preds = %_ZNK5boost9algorithm9is_iequalclIccEEbRKT_RKT0_.exit.i
  %i.ae = icmp eq i8 %i.s, %i.ad
  br i1 %i.ae, label %bb.b, label %_ZN5boost9algorithm11starts_withIPcA18_cNS0_9is_iequalEEEbRKT_RKT0_T1_.exit

bb.b:                                             ; preds = %.noexc6
  %i.af = getelementptr inbounds nuw i8, ptr %.01322.i, i64 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.023.i, i64 1 ; 3 uses
  %i.ah = icmp ne ptr %i.af, %i.c
  %i.ai = icmp ne ptr %i.ag, %i.e
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !65

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.ag, %bb.b ]
  %i.ak = icmp eq ptr %.0.lcssa.i, %i.e
  br label %_ZN5boost9algorithm11starts_withIPcA18_cNS0_9is_iequalEEEbRKT_RKT0_T1_.exit

_ZN5boost9algorithm11starts_withIPcA18_cNS0_9is_iequalEEEbRKT_RKT0_T1_.exit: ; preds = %.noexc6, %._crit_edge.i
  %.014.i = phi i1 [ %i.ak, %._crit_edge.i ], [ false, %.noexc6 ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  ret i1 %.014.i

.loopexit:                                        ; preds = %_ZSt7toupperIcET_S0_RKSt6locale.exit.i.i, %_ZNK5boost9algorithm9is_iequalclIccEEbRKT_RKT0_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost9algorithm12istarts_withIPcA15_cEEbRKT_RKT0_RKSt6locale(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::algorithm::is_iequal", align 8 ; 5 uses
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %i.b = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %i.d = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(15) %1) #23 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = icmp samesign ne i64 %i.b, 0
  %i.g = icmp samesign ne i64 %i.d, 0
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.023.i = phi ptr [ %i.ag, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.01322.i = phi ptr [ %i.af, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.i = load i8, ptr %.01322.i, align 1, !tbaa !12
  %i.j = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #18
  %i.k = load ptr, ptr %3, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 3 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.not.i.i.i.i, label %.invoke, label %_ZSt7toupperIcET_S0_RKSt6locale.exit.i.i

.invoke:                                          ; preds = %.noexc4, %.lr.ph.i
  invoke void @_ZSt16__throw_bad_castv() #21
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt7toupperIcET_S0_RKSt6locale.exit.i.i:         ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext %i.i)
          to label %.noexc4 unwind label %.loopexit, !inline_history !67

.noexc4:                                          ; preds = %_ZSt7toupperIcET_S0_RKSt6locale.exit.i.i
  %i.t = load i8, ptr %.023.i, align 1, !tbaa !12
  %i.u = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #18
  %i.v = load ptr, ptr %3, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62   ; 3 uses
  %.not.not.i.i3.i.i = icmp eq ptr %i.z, null
  br i1 %.not.not.i.i3.i.i, label %.invoke, label %_ZNK5boost9algorithm9is_iequalclIccEEbRKT_RKT0_.exit.i

_ZNK5boost9algorithm9is_iequalclIccEEbRKT_RKT0_.exit.i: ; preds = %.noexc4
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.z, i8 noundef signext %i.t)
          to label %.noexc6 unwind label %.loopexit, !inline_history !67

.noexc6:                                          ; preds = %_ZNK5boost9algorithm9is_iequalclIccEEbRKT_RKT0_.exit.i
  %i.ae = icmp eq i8 %i.s, %i.ad
end_hunk_0
