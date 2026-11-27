Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmSystemTools?download=true
inline.NumInlined: 3100
inline.NumDeleted: 997
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_111extract_tarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EES7_bN13cmSystemTools22cmTarExtractTimestampsEb:bb.a
  %i.ig = load ptr, ptr %i.h, align 8, !tbaa !526
  %i.ih = invoke i32 @archive_match_excluded(ptr noundef nonnull %i.bm, ptr noundef %i.ig)
          to label %bb.ca unwind label %.loopexit.split-lp312.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz
  %.not109 = icmp eq i32 %i.ih, 0
  br i1 %.not109, label %bb.cb, label %.preheader.split.split.backedge

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  %i.ii = load ptr, ptr %i.h, align 8, !tbaa !526
  %i.ij = invoke noundef ptr @archive_entry_pathname(ptr noundef %i.ii)
          to label %_ZL25cm_archive_entry_pathnameP13archive_entry.exit215 unwind label %bb.cf ; 3 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %.split381.us
  %i.ik = load i64, ptr %i.dt, align 8, !tbaa !33
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.il) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %.split381.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178, %.split378.us
  %.pn113 = phi { ptr, i32 } [ %i.hi, %.split378.us ], [ %i.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178 ], [ %i.hj, %.split381.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %.loopexit311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %.split384.us
  %i.im = load i64, ptr %i.du, align 8, !tbaa !33
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.in) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %.split384.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %.loopexit311

_ZL25cm_archive_entry_pathnameP13archive_entry.exit215: ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !530
  %.not.i.i216 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i216, label %_ZN10cmAlphaNumC2EPKc.exit.cont.cont.i217, label %bb.cc

bb.cc:                                            ; preds = %_ZL25cm_archive_entry_pathnameP13archive_entry.exit215
  %i.io = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ij) #34, !noalias !530
  br label %_ZN10cmAlphaNumC2EPKc.exit.cont.cont.i217

_ZN10cmAlphaNumC2EPKc.exit.cont.cont.i217:        ; preds = %bb.cc, %_ZL25cm_archive_entry_pathnameP13archive_entry.exit215
  %.sroa.4.0.i218 = phi i64 [ %i.io, %bb.cc ], [ 0, %_ZL25cm_archive_entry_pathnameP13archive_entry.exit215 ]
  store i64 %.sroa.4.0.i218, ptr %6, align 8, !tbaa !34, !alias.scope !531, !noalias !530
  store ptr %i.ij, ptr %.sroa.4.0..sroa_idx.i.i219, align 8, !tbaa !30, !alias.scope !531, !noalias !530
  store ptr null, ptr %i.di, align 8, !tbaa !38, !alias.scope !531, !noalias !530
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !530
  store i64 0, ptr %7, align 8, !noalias !530
  store i8 10, ptr %i.dl, align 8, !tbaa !33, !noalias !530
  store i64 1, ptr %i.dk, align 8, !tbaa !34, !noalias !530
  store ptr %i.dl, ptr %.sroa.4.0..sroa_idx.i2.i, align 8, !tbaa !30, !noalias !530
  store i64 1, ptr %i.dj, align 8, !tbaa !34, !alias.scope !532, !noalias !530
  store ptr %i.dl, ptr %.sroa.4.0..sroa_idx.i10.i, align 8, !tbaa !30, !alias.scope !532, !noalias !530
  store ptr null, ptr %i.dm, align 8, !tbaa !38, !alias.scope !532, !noalias !530
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr nonnull %6, i64 2)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %_ZN10cmAlphaNumC2EPKc.exit.cont.cont.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !530
  %i.ip = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116s_StdoutCallbackB5cxx11E, i64 16), align 16, !tbaa !50
  %.not.i.i.not.i221 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.not.i221, label %bb.ce, label %_ZNKSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit.i222

_ZNKSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit.i222: ; preds = %bb.cd
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_116s_StdoutCallbackB5cxx11E, i64 24), align 8, !tbaa !53
  invoke void %i.iq(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_116s_StdoutCallbackB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %_ZN13cmSystemTools6StdoutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226 unwind label %bb.cg, !inline_history !499

bb.ce:                                            ; preds = %bb.cd
  %i.ir = load ptr, ptr %20, align 8, !tbaa !29
  %i.is = load i64, ptr %i.dn, align 8, !tbaa !32
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ir, i64 noundef %i.is)
          to label %.noexc224 unwind label %bb.cg

.noexc224:                                        ; preds = %bb.ce
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.it)
          to label %_ZN13cmSystemTools6StdoutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226 unwind label %bb.cg ; 0 uses

_ZN13cmSystemTools6StdoutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226: ; preds = %_ZNKSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit.i222, %.noexc224
  %i.iv = load ptr, ptr %20, align 8, !tbaa !29   ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.do
  br i1 %i.iw, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %_ZN13cmSystemTools6StdoutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226
  %i.ix = load i64, ptr %i.do, align 8, !tbaa !33
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #35
  br label %.thread

.thread:                                          ; preds = %_ZN13cmSystemTools6StdoutERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %.preheader.split.split.backedge

.preheader.split.split.backedge:                  ; preds = %.thread, %bb.ca
  br label %.preheader.split.split, !llvm.loop !500

bb.cf:                                            ; preds = %bb.cb, %_ZN10cmAlphaNumC2EPKc.exit.cont.cont.i217
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

bb.cg:                                            ; preds = %.noexc224, %bb.ce, %_ZNKSt8functionIFvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES7_.exit.i222
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jb = load ptr, ptr %20, align 8, !tbaa !29   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.do
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.cg
  %i.jd = load i64, ptr %i.do, align 8, !tbaa !33
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.cg, %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  %.pn110.pn = phi { ptr, i32 } [ %i.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ], [ %i.iz, %bb.cf ], [ %i.ja, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %.loopexit311

.thread296:                                       ; preds = %.noexc236.us400, %.noexc234.us398, %.noexc234.us, %.noexc236.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %.loopexit319

.split393.us:                                     ; preds = %bb.bw, %bb.bm
  %.us-phi394 = phi i32 [ %i.hh, %bb.bm ], [ %i.ie, %bb.bw ]
  invoke fastcc void @_ZN12_GLOBAL__N_112ArchiveErrorEPKcP7archive(ptr noundef nonnull @.str.88, ptr noundef %i.l)
          to label %.loopexit319 unwind label %.loopexit.split-lp312.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split389.us:                                     ; preds = %bb.bq, %bb.bg
  %.us-phi390 = phi i32 [ %i.gw, %bb.bg ], [ %i.ht, %bb.bq ]
  invoke fastcc void @_ZN12_GLOBAL__N_112ArchiveErrorEPKcP7archive(ptr noundef nonnull @.str.89, ptr noundef %i.l)
          to label %bb.ch unwind label %.loopexit.split-lp312.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %.split389.us
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #34
  %i.jf = load ptr, ptr %i.h, align 8, !tbaa !526
  %i.jg = invoke noundef ptr @archive_entry_pathname(ptr noundef %i.jf)
          to label %_ZL25cm_archive_entry_pathnameP13archive_entry.exit238 unwind label %bb.ck

_ZL25cm_archive_entry_pathnameP13archive_entry.exit238: ; preds = %bb.ch
  store ptr %i.jg, ptr %i.i, align 8, !tbaa !30
  invoke void @_Z8cmStrCatIRA17_KcPS0_JEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 1 dereferenceable(17) @.str.90, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %_ZL25cm_archive_entry_pathnameP13archive_entry.exit238
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.cj unwind label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.jh = load ptr, ptr %21, align 8, !tbaa !29   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.cj
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !33
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  br label %.loopexit319

bb.ck:                                            ; preds = %bb.ch, %_ZL25cm_archive_entry_pathnameP13archive_entry.exit238
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.cl:                                            ; preds = %bb.ci
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jo = load ptr, ptr %21, align 8, !tbaa !29   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.cl
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !33
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %bb.ck
  %.pn117 = phi { ptr, i32 } [ %i.jm, %bb.ck ], [ %i.jn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %i.jn, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  br label %.loopexit311

.loopexit319:                                     ; preds = %bb.by, %bb.bn, %bb.af, %.thread296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %.split.us, %.split393.us
  %.055 = phi i32 [ -25, %.thread296 ], [ %.us-phi376, %.split.us ], [ %.us-phi394, %.split393.us ], [ %.us-phi390, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %i.hp, %bb.bn ], [ %i.dx, %bb.af ], [ %i.if, %bb.by ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #34
  %i.jt = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 11 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 12 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 12 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.jz = invoke i32 @archive_match_path_unmatched_inclusions_next(ptr noundef nonnull %i.bm, ptr noundef nonnull %i.j)
          to label %bb.cm unwind label %.loopexit.split-lp481.loopexit.split-lp.loopexit.split-lp

bb.cm:                                            ; preds = %.loopexit319
  switch i32 %i.jz, label %.loopexit484 [
    i32 0, label %bb.cn
    i32 -30, label %.noexc.i276
  ]

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  %i.ka = load ptr, ptr %i.j, align 8, !tbaa !30  ; 4 uses
  store ptr %i.jt, ptr %24, align 8, !tbaa !31
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %.loopexit485, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ka) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 %i.kc, ptr %i.b, align 8, !tbaa !34
  %i.kd = icmp ugt i64 %i.kc, 15
  br i1 %i.kd, label %.noexc.i246.peel, label %._crit_edge.i.i245.peel

.noexc.i246.peel:                                 ; preds = %bb.co
  %i.ke = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc248.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc248.peel:                                   ; preds = %.noexc.i246.peel
  store ptr %i.ke, ptr %24, align 8, !tbaa !29
  %i.kf = load i64, ptr %i.b, align 8, !tbaa !34
  store i64 %i.kf, ptr %i.jt, align 8, !tbaa !33
  br label %._crit_edge.i.i245.peel

._crit_edge.i.i245.peel:                          ; preds = %.noexc248.peel, %bb.co
  %i.kg = phi ptr [ %i.ke, %.noexc248.peel ], [ %i.jt, %bb.co ] ; 2 uses
  switch i64 %i.kc, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %bb.cr
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i245.peel
  %i.kh = load i8, ptr %i.ka, align 1, !tbaa !33
  store i8 %i.kh, ptr %i.kg, align 1, !tbaa !33
  br label %bb.cr

bb.cq:                                            ; preds = %._crit_edge.i.i245.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kg, ptr nonnull align 1 %i.ka, i64 %i.kc, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i245.peel
  %i.ki = load i64, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  store i64 %i.ki, ptr %i.ju, align 8, !tbaa !32
  %i.kj = load ptr, ptr %24, align 8, !tbaa !29
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.ki
  store i8 0, ptr %i.kk, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.kl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.91, i64 noundef 5)
          to label %.noexc251.peel unwind label %.loopexit.split-lp490.loopexit.split-lp.loopexit.split-lp, !noalias !533 ; 6 uses

.noexc251.peel:                                   ; preds = %bb.cr
  store ptr %i.jv, ptr %23, align 8, !tbaa !31, !alias.scope !533
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !29 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 5 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %bb.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250.peel: ; preds = %.noexc251.peel
  store ptr %i.km, ptr %23, align 8, !tbaa !29, !alias.scope !533
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !33
  store i64 %i.kp, ptr %i.jv, align 8, !tbaa !33, !alias.scope !533
  %.phi.trans.insert.i.peel = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %.pre.i.peel = load i64, ptr %.phi.trans.insert.i.peel, align 8, !tbaa !32
  br label %bb.ct

bb.cs:                                            ; preds = %.noexc251.peel
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !32 ; 3 uses
  %i.ks = icmp ult i64 %i.kr, 16
  call void @llvm.assume(i1 %i.ks)
  %i.kt = add nuw nsw i64 %i.kr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jv, ptr noundef nonnull align 8 dereferenceable(1) %i.kn, i64 %i.kt, i1 false)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250.peel
  %i.ku = phi i64 [ %i.kr, %bb.cs ], [ %.pre.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250.peel ]
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store i64 %i.ku, ptr %i.jw, align 8, !tbaa !32, !alias.scope !533
  store ptr %i.kn, ptr %i.kl, align 8, !tbaa !29
  store i64 0, ptr %i.kv, align 8, !tbaa !32
  store i8 0, ptr %i.kn, align 8, !tbaa !33
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.kw = load i64, ptr %i.jw, align 8, !tbaa !32, !noalias !534
  %i.kx = add i64 %i.kw, -4611686018427387882
  %i.ky = icmp ult i64 %i.kx, 22
  br i1 %i.ky, label %.loopexit493, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel: ; preds = %bb.ct
  %i.kz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.92, i64 noundef 22)
          to label %.noexc256.peel unwind label %.loopexit.split-lp307.loopexit.split-lp.loopexit.split-lp, !noalias !534 ; 6 uses

.noexc256.peel:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel
  store ptr %i.jx, ptr %22, align 8, !tbaa !31, !alias.scope !534
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !29 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 5 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %bb.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.peel: ; preds = %.noexc256.peel
  store ptr %i.la, ptr %22, align 8, !tbaa !29, !alias.scope !534
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !33
  store i64 %i.ld, ptr %i.jx, align 8, !tbaa !33, !alias.scope !534
  %.phi.trans.insert.i253.peel = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %.pre.i254.peel = load i64, ptr %.phi.trans.insert.i253.peel, align 8, !tbaa !32
  br label %bb.cv

bb.cu:                                            ; preds = %.noexc256.peel
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !32 ; 3 uses
  %i.lg = icmp ult i64 %i.lf, 16
  call void @llvm.assume(i1 %i.lg)
  %i.lh = add nuw nsw i64 %i.lf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jx, ptr noundef nonnull align 8 dereferenceable(1) %i.lb, i64 %i.lh, i1 false)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.peel
  %i.li = phi i64 [ %i.lf, %bb.cu ], [ %.pre.i254.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.peel ]
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store i64 %i.li, ptr %i.jy, align 8, !tbaa !32, !alias.scope !534
  store ptr %i.lb, ptr %i.kz, align 8, !tbaa !29
  store i64 0, ptr %i.lj, align 8, !tbaa !32
  store i8 0, ptr %i.lb, align 8, !tbaa !33
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.cw unwind label %.loopexit.split-lp498.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %bb.cv
  %i.lk = load ptr, ptr %22, align 8, !tbaa !29   ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.jx
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.peel: ; preds = %bb.cw
  %i.lm = load i64, ptr %i.jx, align 8, !tbaa !33
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.peel: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257.peel
  %i.lo = load ptr, ptr %23, align 8, !tbaa !29   ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.jv
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.peel
  %i.lq = load i64, ptr %i.jv, align 8, !tbaa !33
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260.peel
  %i.ls = load ptr, ptr %24, align 8, !tbaa !29   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.jt
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel.preheader, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263
  %.sink703 = phi ptr [ %i.nq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263 ], [ %i.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.peel ]
  %i.lu = load i64, ptr %i.jt, align 8, !tbaa !33
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %.sink703, i64 noundef %i.lv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263.peel
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  %i.lw = invoke i32 @archive_match_path_unmatched_inclusions_next(ptr noundef nonnull %i.bm, ptr noundef nonnull %i.j)
          to label %bb.cx unwind label %.loopexit.split-lp481.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.cy, label %.loopexit484

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  %i.ly = load ptr, ptr %i.j, align 8, !tbaa !30  ; 4 uses
  store ptr %i.jt, ptr %24, align 8, !tbaa !31
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %.loopexit485, label %bb.cz

.loopexit485:                                     ; preds = %bb.cy, %bb.cn
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.67) #36
          to label %.noexc247 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc247:                                        ; preds = %.loopexit485
  unreachable

bb.cz:                                            ; preds = %bb.cy
  %i.ma = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ly) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 %i.ma, ptr %i.b, align 8, !tbaa !34
  %i.mb = icmp ugt i64 %i.ma, 15
  br i1 %i.mb, label %.noexc.i246, label %._crit_edge.i.i245

.noexc.i246:                                      ; preds = %bb.cz
  %i.mc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc248 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc248:                                        ; preds = %.noexc.i246
  store ptr %i.mc, ptr %24, align 8, !tbaa !29
  %i.md = load i64, ptr %i.b, align 8, !tbaa !34
  store i64 %i.md, ptr %i.jt, align 8, !tbaa !33
  br label %._crit_edge.i.i245

._crit_edge.i.i245:                               ; preds = %.noexc248, %bb.cz
  %i.me = phi ptr [ %i.mc, %.noexc248 ], [ %i.jt, %bb.cz ] ; 2 uses
  switch i64 %i.ma, label %bb.db [
    i64 1, label %bb.da
    i64 0, label %bb.dc
  ]

bb.da:                                            ; preds = %._crit_edge.i.i245
  %i.mf = load i8, ptr %i.ly, align 1, !tbaa !33
  store i8 %i.mf, ptr %i.me, align 1, !tbaa !33
  br label %bb.dc

bb.db:                                            ; preds = %._crit_edge.i.i245
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.me, ptr nonnull align 1 %i.ly, i64 %i.ma, i1 false)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %._crit_edge.i.i245
  %i.mg = load i64, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  store i64 %i.mg, ptr %i.ju, align 8, !tbaa !32
  %i.mh = load ptr, ptr %24, align 8, !tbaa !29
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mg
  store i8 0, ptr %i.mi, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.mj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.91, i64 noundef 5)
          to label %.noexc251 unwind label %.loopexit.split-lp490.loopexit.split-lp.loopexit.split-lp, !noalias !535 ; 6 uses

.noexc251:                                        ; preds = %bb.dc
  store ptr %i.jv, ptr %23, align 8, !tbaa !31, !alias.scope !535
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !29 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 16 ; 5 uses
  %i.mm = icmp eq ptr %i.mk, %i.ml
  br i1 %i.mm, label %bb.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

bb.dd:                                            ; preds = %.noexc251
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !32 ; 3 uses
  %i.mp = icmp ult i64 %i.mo, 16
  call void @llvm.assume(i1 %i.mp)
  %i.mq = add nuw nsw i64 %i.mo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jv, ptr noundef nonnull align 8 dereferenceable(1) %i.ml, i64 %i.mq, i1 false)
  br label %bb.de

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %.noexc251
  store ptr %i.mk, ptr %23, align 8, !tbaa !29, !alias.scope !535
  %i.mr = load i64, ptr %i.ml, align 8, !tbaa !33
  store i64 %i.mr, ptr %i.jv, align 8, !tbaa !33, !alias.scope !535
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !32
  br label %bb.de

bb.de:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250, %bb.dd
  %i.ms = phi i64 [ %i.mo, %bb.dd ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250 ]
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store i64 %i.ms, ptr %i.jw, align 8, !tbaa !32, !alias.scope !535
  store ptr %i.ml, ptr %i.mj, align 8, !tbaa !29
  store i64 0, ptr %i.mt, align 8, !tbaa !32
  store i8 0, ptr %i.ml, align 8, !tbaa !33
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.mu = load i64, ptr %i.jw, align 8, !tbaa !32, !noalias !536
  %i.mv = add i64 %i.mu, -4611686018427387882
  %i.mw = icmp ult i64 %i.mv, 22
  br i1 %i.mw, label %.loopexit493, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.loopexit493:                                     ; preds = %bb.de, %bb.ct
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.142) #36
          to label %.noexc255 unwind label %.loopexit.split-lp307.loopexit.split-lp.loopexit.split-lp, !noalias !536

.noexc255:                                        ; preds = %.loopexit493
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.de
  %i.mx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.92, i64 noundef 22)
          to label %.noexc256 unwind label %.loopexit.split-lp307.loopexit.split-lp.loopexit.split-lp, !noalias !536 ; 6 uses

.noexc256:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.jx, ptr %22, align 8, !tbaa !31, !alias.scope !536
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !29 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 16 ; 5 uses
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %bb.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

bb.df:                                            ; preds = %.noexc256
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !32 ; 3 uses
  %i.nd = icmp ult i64 %i.nc, 16
  call void @llvm.assume(i1 %i.nd)
  %i.ne = add nuw nsw i64 %i.nc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jx, ptr noundef nonnull align 8 dereferenceable(1) %i.mz, i64 %i.ne, i1 false)
  br label %bb.dg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %.noexc256
  store ptr %i.my, ptr %22, align 8, !tbaa !29, !alias.scope !536
  %i.nf = load i64, ptr %i.mz, align 8, !tbaa !33
  store i64 %i.nf, ptr %i.jx, align 8, !tbaa !33, !alias.scope !536
  %.phi.trans.insert.i253 = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %.pre.i254 = load i64, ptr %.phi.trans.insert.i253, align 8, !tbaa !32
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.df
  %i.ng = phi i64 [ %i.nc, %bb.df ], [ %.pre.i254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ]
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store i64 %i.ng, ptr %i.jy, align 8, !tbaa !32, !alias.scope !536
  store ptr %i.mz, ptr %i.mx, align 8, !tbaa !29
  store i64 0, ptr %i.nh, align 8, !tbaa !32
  store i8 0, ptr %i.mz, align 8, !tbaa !33
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.dh unwind label %.loopexit.split-lp498.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dg
  %i.ni = load ptr, ptr %22, align 8, !tbaa !29   ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.jx
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %bb.dh
  %i.nk = load i64, ptr %i.jx, align 8, !tbaa !33
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.ni, i64 noundef %i.nl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257
  %i.nm = load ptr, ptr %23, align 8, !tbaa !29   ; 2 uses
  %i.nn = icmp eq ptr %i.nm, %i.jv
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
  %i.no = load i64, ptr %i.jv, align 8, !tbaa !33
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.np) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
  %i.nq = load ptr, ptr %24, align 8, !tbaa !29   ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.jt
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263, !llvm.loop !516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263.peel, !llvm.loop !516

.loopexit.split-lp481.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.peel, %.loopexit319
  %lpad.loopexit.split-lp703 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i246, %.noexc.i246.peel, %.loopexit485
  %lpad.loopexit.split-lp705 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

.loopexit.split-lp490.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dc, %bb.cr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

.loopexit.split-lp307.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.peel, %.loopexit493
  %lpad.loopexit.split-lp710 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

.loopexit.split-lp498.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dg, %bb.cv
  %lpad.loopexit.split-lp713 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ns = load ptr, ptr %22, align 8, !tbaa !29   ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.jx
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %.loopexit.split-lp498.loopexit.split-lp.loopexit.split-lp
  %i.nu = load i64, ptr %i.jx, align 8, !tbaa !33
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %.loopexit.split-lp498.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp307.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
  %.pn122 = phi { ptr, i32 } [ %lpad.loopexit.split-lp713, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266 ], [ %lpad.loopexit.split-lp710, %.loopexit.split-lp307.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp713, %.loopexit.split-lp498.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.nw = load ptr, ptr %23, align 8, !tbaa !29   ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.jv
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  %i.ny = load i64, ptr %i.jv, align 8, !tbaa !33
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.nz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %.loopexit.split-lp490.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269
  %.pn122.pn = phi { ptr, i32 } [ %.pn122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp490.loopexit.split-lp.loopexit.split-lp ], [ %.pn122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ] ; 2 uses
  %i.oa = load ptr, ptr %24, align 8, !tbaa !29   ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.jt
  br i1 %i.ob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271
  %i.oc = load i64, ptr %i.jt, align 8, !tbaa !33
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.od) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  %.pn122.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272 ], [ %lpad.loopexit.split-lp705, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn122.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %bb.dm

.noexc.i276:                                      ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34
  %i.oe = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.oe, ptr %25, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 18, ptr %i.a, align 8, !tbaa !34
  %i.of = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.di unwind label %bb.dk     ; 2 uses

bb.di:                                            ; preds = %.noexc.i276
  store ptr %i.of, ptr %25, align 8, !tbaa !29
  %i.og = load i64, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  store i64 %i.og, ptr %i.oe, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.of, ptr noundef nonnull align 1 dereferenceable(18) @.str.93, i64 18, i1 false)
  %i.oh = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.og, ptr %i.oh, align 8, !tbaa !32
  %i.oi = load ptr, ptr %25, align 8, !tbaa !29
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.og
  store i8 0, ptr %i.oj, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  invoke void @_ZN13cmSystemTools5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.dj unwind label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.ok = load ptr, ptr %25, align 8, !tbaa !29   ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.oe
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %bb.dj
  %i.om = load i64, ptr %i.oe, align 8, !tbaa !33
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.on) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  br label %.loopexit484

bb.dk:                                            ; preds = %.noexc.i276
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

bb.dl:                                            ; preds = %bb.di
  %i.op = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oq = load ptr, ptr %25, align 8, !tbaa !29   ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.oe
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %bb.dl
  %i.os = load i64, ptr %i.oe, align 8, !tbaa !33
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282, %bb.dk
  %.pn120 = phi { ptr, i32 } [ %i.oo, %bb.dk ], [ %i.op, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282 ], [ %i.op, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  br label %bb.dm

.loopexit484:                                     ; preds = %bb.cx, %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
  %cond1 = phi i1 [ true, %bb.cm ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ false, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  %i.ou = icmp eq i32 %.055, 1
  %spec.select141 = select i1 %cond1, i1 %i.ou, i1 false
  br label %.thread298

bb.dm:                                            ; preds = %.loopexit.split-lp481.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %.pn122.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ %.pn120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284 ], [ %lpad.loopexit.split-lp703, %.loopexit.split-lp481.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #34
  br label %.loopexit311

.thread298:                                       ; preds = %bb.bx, %.loopexit484, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i162
  %.890300 = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i162 ], [ %spec.select141, %.loopexit484 ], [ false, %bb.bx ]
  %i.ov = invoke i32 @archive_match_free(ptr noundef nonnull %i.bm)
          to label %_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_119ArchiveMatchDeleterEED2Ev.exit unwind label %bb.dn ; 0 uses

bb.dn:                                            ; preds = %.thread298
  %i.ow = landingpad { ptr, i32 }
          catch ptr null
  %i.ox = extractvalue { ptr, i32 } %i.ow, 0
  call void @__clang_call_terminate(ptr %i.ox) #37
  unreachable

_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_119ArchiveMatchDeleterEED2Ev.exit: ; preds = %.thread302, %.thread298
  %.890301 = phi i1 [ false, %.thread302 ], [ %.890300, %.thread298 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  br label %bb.dp

.loopexit311:                                     ; preds = %.loopexit.split-lp312.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %.pn127.pn = phi { ptr, i32 } [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %.pn110.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %.pn104, %.body ], [ %.pn122.pn.pn.pn, %bb.dm ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %.pn113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ], [ %lpad.loopexit.split-lp766, %.loopexit.split-lp312.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_119ArchiveMatchDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #34
  br label %bb.do

bb.do:                                            ; preds = %.loopexit311, %bb.w
  %.pn127.pn.pn = phi { ptr, i32 } [ %.pn127.pn, %.loopexit311 ], [ %i.bu, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  br label %bb.du

bb.dp:                                            ; preds = %bb.f, %_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_119ArchiveMatchDeleterEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %.991 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %.890301, %_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_119ArchiveMatchDeleterEED2Ev.exit ], [ false, %bb.f ]
  %.not.i286 = icmp eq ptr %i.l, null
  br i1 %.not.i286, label %_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_119ArchiveWriteDeleterEED2Ev.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.oy = invoke i32 @archive_write_free(ptr noundef nonnull %i.l)
          to label %_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_119ArchiveWriteDeleterEED2Ev.exit unwind label %bb.dr ; 0 uses

bb.dr:                                            ; preds = %bb.dq
  %i.oz = landingpad { ptr, i32 }
          catch ptr null
  %i.pa = extractvalue { ptr, i32 } %i.oz, 0
  call void @__clang_call_terminate(ptr %i.pa) #37
  unreachable

_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_119ArchiveWriteDeleterEED2Ev.exit: ; preds = %bb.dp, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %.not.i287 = icmp eq ptr %i.k, null
  br i1 %.not.i287, label %_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_118ArchiveReadDeleterEED2Ev.exit, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_119ArchiveWriteDeleterEED2Ev.exit
  %i.pb = invoke i32 @archive_read_free(ptr noundef nonnull %i.k)
          to label %_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_118ArchiveReadDeleterEED2Ev.exit unwind label %bb.dt ; 0 uses

bb.dt:                                            ; preds = %bb.ds
  %i.pc = landingpad { ptr, i32 }
          catch ptr null
  %i.pd = extractvalue { ptr, i32 } %i.pc, 0
  call void @__clang_call_terminate(ptr %i.pd) #37
  unreachable

_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_118ArchiveReadDeleterEED2Ev.exit: ; preds = %_ZNSt10unique_ptrI7archiveN12_GLOBAL__N_119ArchiveWriteDeleterEED2Ev.exit, %bb.ds
end_hunk_0
