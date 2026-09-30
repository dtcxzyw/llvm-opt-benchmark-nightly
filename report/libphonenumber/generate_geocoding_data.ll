Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/generate_geocoding_data?download=true
inline.NumInlined: 2644
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4i18n12phonenumbers13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_8DirEntryESaISA_EE:bb.a
  store i64 %i.cf, ptr %i.u, align 8, !tbaa !29
  %i.cg = load ptr, ptr %5, align 8, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 0, ptr %i.ch, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store i32 %.0, ptr %i.v, align 8, !tbaa !34
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !20  ; 7 uses
  %i.cj = load ptr, ptr %i.w, align 8, !tbaa !35
  %.not.i.i38 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i.i38, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 3 uses
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !30
  %i.cl = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.t
  br i1 %i.cm, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39

bb.r:                                             ; preds = %bb.q
  %i.cn = load i64, ptr %i.u, align 8, !tbaa !29  ; 3 uses
  %i.co = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ck, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorIN4i18n12phonenumbers8DirEntryESaIS2_EE9push_backEOS2_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39: ; preds = %bb.q
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !25
  %i.cq = load i64, ptr %i.t, align 8, !tbaa !26
  store i64 %i.cq, ptr %i.ck, align 8, !tbaa !26
  %.pre = load i64, ptr %i.u, align 8, !tbaa !29
  br label %_ZNSt6vectorIN4i18n12phonenumbers8DirEntryESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN4i18n12phonenumbers8DirEntryESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39
  %i.cr = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39 ], [ %i.cn, %bb.r ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !29
  store ptr %i.t, ptr %5, align 8, !tbaa !25
  store i64 0, ptr %i.u, align 8, !tbaa !29
  store i8 0, ptr %i.t, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cu = load i32, ptr %i.v, align 8, !tbaa !34
  store i32 %i.cu, ptr %i.ct, align 8, !tbaa !34
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  store ptr %i.cw, ptr %i.c, align 8, !tbaa !20
  br label %_ZN4i18n12phonenumbers8DirEntryD2Ev.exit

bb.s:                                             ; preds = %bb.p
  invoke void @_ZNSt6vectorIN4i18n12phonenumbers8DirEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ci, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %_ZNSt6vectorIN4i18n12phonenumbers8DirEntryESaIS2_EE9push_backEOS2_.exit unwind label %bb.w

_ZNSt6vectorIN4i18n12phonenumbers8DirEntryESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.s
  %.pre104 = load ptr, ptr %5, align 8, !tbaa !25 ; 2 uses
  %i.cx = icmp eq ptr %.pre104, %i.t
  br i1 %i.cx, label %_ZN4i18n12phonenumbers8DirEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4i18n12phonenumbers8DirEntryESaIS2_EE9push_backEOS2_.exit
  %i.cy = load i64, ptr %i.t, align 8, !tbaa !26
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %.pre104, i64 noundef %i.cz) #27
  br label %_ZN4i18n12phonenumbers8DirEntryD2Ev.exit

_ZN4i18n12phonenumbers8DirEntryD2Ev.exit:         ; preds = %_ZNSt6vectorIN4i18n12phonenumbers8DirEntryESaIS2_EE9push_backEOS2_.exit, %_ZNSt6vectorIN4i18n12phonenumbers8DirEntryESaIS2_EE9push_backEOS2_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %_ZN4i18n12phonenumbers8DirEntryD2Ev.exit
  %i.da = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.q
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.jt0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.jt0

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dc = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.q
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.jt1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.jt1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.jt0: ; preds = %bb.t
  %i.de = load i64, ptr %i.q, align 8, !tbaa !26
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.df) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.jt0

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.jt1: ; preds = %bb.u
  %i.dg = load i64, ptr %i.q, align 8, !tbaa !26
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.jt1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.jt0: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.jt0, %.tail, %.tail60
  br label %.backedge, !llvm.loop !139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.jt1: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit69

bb.v:                                             ; preds = %.noexc.i.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4i18n12phonenumbers8DirEntryD2Ev.exit46

bb.w:                                             ; preds = %bb.s
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.t
  br i1 %i.dl, label %_ZN4i18n12phonenumbers8DirEntryD2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %bb.w
  %i.dm = load i64, ptr %i.t, align 8, !tbaa !26
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #27
  br label %_ZN4i18n12phonenumbers8DirEntryD2Ev.exit46

_ZN4i18n12phonenumbers8DirEntryD2Ev.exit46:       ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44, %bb.v
  %.pn28 = phi { ptr, i32 } [ %i.di, %bb.v ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44 ], [ %i.dj, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.do = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.q
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZN4i18n12phonenumbers8DirEntryD2Ev.exit46
  %i.dq = load i64, ptr %i.q, align 8, !tbaa !26
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZN4i18n12phonenumbers8DirEntryD2Ev.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %.body
  %.pn28.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %.pn28, %_ZN4i18n12phonenumbers8DirEntryD2Ev.exit46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZN4i18n12phonenumbers10AutoCloserI11__dirstreamED2Ev.exit53

.loopexit69:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.jt1, %bb.d
  %.222 = phi i1 [ %i.aa, %bb.d ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.jt1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ds = call noundef i32 @closedir(ptr noundef nonnull %i.l), !inline_history !140 ; 0 uses
  br label %_ZN4i18n12phonenumbers10AutoCloserI11__dirstreamED2Ev.exit

_ZN4i18n12phonenumbers10AutoCloserI11__dirstreamED2Ev.exit53: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.ab, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.dt = call noundef i32 @closedir(ptr noundef nonnull %i.l), !inline_history !140 ; 0 uses
  resume { ptr, i32 } %.pn28.pn.pn

_ZN4i18n12phonenumbers10AutoCloserI11__dirstreamED2Ev.exit: ; preds = %.loopexit69, %_ZNSt6vectorIN4i18n12phonenumbers8DirEntryESaIS2_EE5clearEv.exit
  %.323 = phi i1 [ false, %_ZNSt6vectorIN4i18n12phonenumbers8DirEntryESaIS2_EE5clearEv.exit ], [ %.222, %.loopexit69 ]
  ret i1 %.323
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare ptr @readdir(ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4i18n12phonenumbers8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %_ZSt5equalISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESC_EbT_SD_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !25, !noalias !152 ; 2 uses
  %.not1.i.i.i.i = icmp samesign eq i64 %i.b, 0
  br i1 %.not1.i.i.i.i, label %_ZSt5equalISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESC_EbT_SD_T0_.exit, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !25, !noalias !153
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %i.i, %.lr.ph.i.i.preheader.i.i ]
  %i.j = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.g, %.lr.ph.i.i.preheader.i.i ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -1 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !26    ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i, i64 -1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26    ; 2 uses
  %.not = icmp ne i8 %i.l, %i.n
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.f
  %or.cond.not = select i1 %.not, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.not, label %_ZSt5equalISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESC_EbT_SD_T0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !151

_ZSt5equalISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESC_EbT_SD_T0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %2 = icmp eq i8 %i.l, %i.n
  br label %_ZSt5equalISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESC_EbT_SD_T0_.exit

_ZSt5equalISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESC_EbT_SD_T0_.exit: ; preds = %_ZSt5equalISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESC_EbT_SD_T0_.exit.loopexit, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %2, %_ZSt5equalISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESC_EbT_SD_T0_.exit.loopexit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4i18n12phonenumbers8StrToIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.g = load ptr, ptr %2, align 8, !tbaa !37
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46
  %i.m = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !37
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.o = getelementptr i8, ptr %i.m, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p
  store ptr %i.n, ptr %i.q, align 8, !tbaa !37
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.r, ptr %i.a, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.x = load i64, ptr %i.v, align 8, !tbaa !26
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.z = and i32 %i.l, 5
  %.not = icmp eq i32 %i.z, 0
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #28
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !37
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ah) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i1 %.not

bb.c:                                             ; preds = %bb.a, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4i18n12phonenumbers8IntToStrEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %0)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !37
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !37
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8, !tbaa !37
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.o, ptr %i.a, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !tbaa !26
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.w = and i32 %i.i, 5
  %.not = icmp eq i32 %i.w, 0
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #28
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !37
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i1 %.not

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.af
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4i18n12phonenumbers13ParsePrefixesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4absl7debian39btree_mapIiS6_St4lessIiESaISt4pairIKiS6_EEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.88", align 8     ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN4absl7debian318container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4absl7debian318container_internal10btree_nodeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE16clear_and_deleteEPSH_PSF_(ptr noundef %i.g, ptr noundef nonnull %i.h)
  br label %_ZN4absl7debian318container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEEE5clearEv.exit

_ZN4absl7debian318container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEEE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.i, align 8, !tbaa !56
  store ptr @_ZZN4absl7debian318container_internal5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %1, align 8, !tbaa !56
  store i64 0, ptr %i.d, align 8, !tbaa !54
  %i.j = load ptr, ptr %0, align 8, !tbaa !25
  %i.k = tail call noalias ptr @fopen(ptr noundef %i.j, ptr noundef nonnull @.str.3) ; 7 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZN4i18n12phonenumbers10AutoCloserI8_IO_FILEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4absl7debian318container_internal15btree_containerINS1_5btreeINS1_10map_paramsIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEEE5clearEv.exit
  %i.l = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #31
          to label %bb.d unwind label %bb.i       ; 14 uses

bb.d:                                             ; preds = %bb.c
  %i.m = ptrtoaddr ptr %i.l to i64                ; 2 uses
end_hunk_0
