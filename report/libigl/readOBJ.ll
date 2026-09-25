Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/readOBJ?download=true
inline.NumInlined: 780
inline.NumDeleted: 336
begin_hunk_0_@_ZN3igl7readOBJIdiEEbP8_IO_FILERSt6vectorIS3_IT_SaIS4_EESaIS6_EES9_S9_RS3_IS3_IT0_SaISA_EESaISC_EESF_SF_RS3_ISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_EESaISN_EE:bb.a
  %i.hk = ptrtoint ptr %i.hh to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hl) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit246

_ZNSt6vectorIdSaIdEED2Ev.exit246:                 ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  store ptr %i.du, ptr %15, align 8, !tbaa !55
  %i.hm = load i64, ptr %i.dw, align 8
  %i.hn = getelementptr inbounds i8, ptr %15, i64 %i.hm
  store ptr %i.dv, ptr %i.hn, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dx, align 8, !tbaa !55
  %i.ho = load ptr, ptr %i.dy, align 8, !tbaa !18 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.dz
  br i1 %i.hp, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit246
  %i.hq = load i64, ptr %i.dz, align 8, !tbaa !21
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #18
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dx, align 8, !tbaa !55
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ea) #17
  store ptr %i.eb, ptr %15, align 8, !tbaa !55
  %i.hs = load i64, ptr %i.ed, align 8
  %i.ht = getelementptr inbounds i8, ptr %15, i64 %i.hs
  store ptr %i.ec, ptr %i.ht, align 8, !tbaa !55
  store i64 0, ptr %i.ee, align 8, !tbaa !82
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ef) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br i1 %i.fy, label %bb.fh, label %.critedge176

.body:                                            ; preds = %bb.x, %bb.w, %bb.q, %bb.p, %bb.v
  %.pn165 = phi { ptr, i32 } [ %i.fn, %bb.p ], [ %i.gi, %bb.v ], [ %lpad.phi564, %bb.x ], [ %i.fn, %bb.q ], [ %lpad.phi564, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %15) #17
  br label %bb.ag

bb.ag:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %.pn165.pn = phi { ptr, i32 } [ %.pn165, %.body ], [ %.pn163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.fg

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread504: ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %i.hu = load i64, ptr %i.bz, align 8, !tbaa !19
  %i.hv = icmp eq i64 %i.hu, %i.ei
  br i1 %i.hv, label %bb.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread505

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread504
  %i.hw = icmp eq i64 %i.ei, 0
  br i1 %i.hw, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248: ; preds = %bb.ah
  %i.hx = load ptr, ptr %11, align 8, !tbaa !18
  %bcmp.i.i247 = call i32 @bcmp(ptr %i.hx, ptr nonnull %i.f, i64 %i.ei)
  %i.hy = icmp eq i32 %bcmp.i.i247, 0
  br i1 %i.hy, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread505

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread: ; preds = %bb.ah, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.hz = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ej, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.g, ptr noundef nonnull %i.df, ptr noundef nonnull %i.dg) #17
  %.not160 = icmp eq i32 %i.hz, 3
  br i1 %.not160, label %bb.ai, label %.thread

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread
  %i.ia = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ia, ptr noundef nonnull @.str.20, i32 noundef %.098739) #19 ; 0 uses
  %i.ic = call i32 @fclose(ptr noundef %0)        ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %.critedge176

bb.ai:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.id = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.aj unwind label %bb.ao     ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.id, ptr %19, align 8, !tbaa !38
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24 ; 2 uses
  store ptr %i.ie, ptr %i.dh, align 8, !tbaa !39
  store ptr %i.ie, ptr %i.di, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa !70
  %i.if = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 6 uses
  %i.ig = load ptr, ptr %i.dj, align 8, !tbaa !40
  %.not.i250 = icmp eq ptr %i.if, %i.ig
  br i1 %.not.i250, label %bb.an, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i252

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i252: ; preds = %bb.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.if, i8 0, i64 24, i1 false)
  %i.ih = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %.noexc256 unwind label %bb.ar ; 6 uses

.noexc256:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i252
  store ptr %i.ih, ptr %i.if, align 8, !tbaa !38
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 2 uses
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !66
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !39
  %i.il = load ptr, ptr %19, align 8, !tbaa !68   ; 4 uses
  %i.im = load ptr, ptr %i.di, align 8, !tbaa !68
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.il to i64
  %i.ip = sub i64 %i.in, %i.io                    ; 4 uses
  %i.iq = icmp sgt i64 %i.ip, 8
  br i1 %i.iq, label %bb.ak, label %bb.al, !prof !69

bb.ak:                                            ; preds = %.noexc256
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr align 8 %i.il, i64 %i.ip, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i253

bb.al:                                            ; preds = %.noexc256
  %i.ir = icmp eq i64 %i.ip, 8
  br i1 %i.ir, label %bb.am, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i253

bb.am:                                            ; preds = %bb.al
  %i.is = load double, ptr %i.il, align 8, !tbaa !70
  store double %i.is, ptr %i.ih, align 8, !tbaa !70
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i253

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i253:           ; preds = %bb.am, %bb.al, %bb.ak
  %i.it = getelementptr inbounds i8, ptr %i.ih, i64 %i.ip
  store ptr %i.it, ptr %i.ii, align 8, !tbaa !66
  %i.iu = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  store ptr %i.iv, ptr %i.ai, align 8, !tbaa !35
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258

bb.an:                                            ; preds = %bb.aj
  invoke void @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.if, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258_crit_edge unwind label %bb.ar

._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258_crit_edge: ; preds = %bb.an
  %.pre793 = load ptr, ptr %19, align 8, !tbaa !38
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258

bb.ao:                                            ; preds = %bb.ai
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit264

_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258: ; preds = %._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258_crit_edge, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i253
  %i.ix = phi ptr [ %.pre793, %._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258_crit_edge ], [ %i.il, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i253 ] ; 3 uses
  %.not.i.i.i259 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i259, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258
  %i.iy = load ptr, ptr %i.dh, align 8, !tbaa !39
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = ptrtoint ptr %i.ix to i64
  %i.jb = sub i64 %i.iz, %i.ja
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.jb) #18
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %bb.fh

bb.ar:                                            ; preds = %bb.an, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i252
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jd = load ptr, ptr %19, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i262 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i262, label %_ZNSt6vectorIdSaIdEED2Ev.exit264, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.je = load ptr, ptr %i.dh, align 8, !tbaa !39
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jd to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.jh) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit264

_ZNSt6vectorIdSaIdEED2Ev.exit264:                 ; preds = %bb.as, %bb.ar, %bb.ao
  %.pn161 = phi { ptr, i32 } [ %i.iw, %bb.ao ], [ %i.jc, %bb.ar ], [ %i.jc, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %bb.fg

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread505: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread504, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248
  %i.ji = load i64, ptr %i.cc, align 8, !tbaa !19
  %i.jj = icmp eq i64 %i.ji, %i.ei
  br i1 %i.jj, label %bb.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266.thread506

bb.at:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread505
  %i.jk = icmp eq i64 %i.ei, 0
  br i1 %i.jk, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266: ; preds = %bb.at
  %i.jl = load ptr, ptr %12, align 8, !tbaa !18
  %bcmp.i.i265 = call i32 @bcmp(ptr %i.jl, ptr nonnull %i.f, i64 %i.ei)
  %i.jm = icmp eq i32 %bcmp.i.i265, 0
  br i1 %i.jm, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266.thread506

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266.thread: ; preds = %bb.at, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.jn = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ej, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.h, ptr noundef nonnull %i.da, ptr noundef nonnull %i.db) #17 ; 4 uses
  %i.jo = and i32 %i.jn, -2
  %or.cond = icmp eq i32 %i.jo, 2
  br i1 %or.cond, label %bb.au, label %.thread507

.thread507:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266.thread
  %i.jp = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.jq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jp, ptr noundef nonnull @.str.21, i32 noundef %.098739, i32 noundef %i.jn) #19 ; 0 uses
  %i.jr = call i32 @fclose(ptr noundef %0)        ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %.critedge176

bb.au:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.js = zext nneg i32 %i.jn to i64              ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.jt = shl nuw nsw i64 %i.js, 3                ; 5 uses
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #21
          to label %.lr.ph733 unwind label %bb.az ; 7 uses

.lr.ph733:                                        ; preds = %bb.au
  store ptr %i.ju, ptr %20, align 8, !tbaa !38
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.js
  store ptr %i.jv, ptr %i.dc, align 8, !tbaa !39
  store double 0.000000e+00, ptr %i.ju, align 8, !tbaa !70
  %i.jw = getelementptr i8, ptr %i.ju, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.jt, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.jw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !70
  %i.jx = getelementptr i8, ptr %i.ju, i64 %i.jt
  store ptr %i.jx, ptr %i.dd, align 8, !tbaa !66
  %min.iters.check = icmp ult i32 %i.jn, 4
  br i1 %min.iters.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph733, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph733 ] ; 3 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %wide.load = load <2 x double>, ptr %i.jy, align 16, !tbaa !70
  %wide.load1013 = load <2 x double>, ptr %i.jz, align 16, !tbaa !70
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %index ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store <2 x double> %wide.load, ptr %i.ka, align 8, !tbaa !70
  store <2 x double> %wide.load1013, ptr %i.kb, align 8, !tbaa !70
  %index.next = add nuw i64 %index, 4
  br label %vector.body, !llvm.loop !76

._crit_edge734:                                   ; preds = %scalar.ph
  %i.kc = load ptr, ptr %i.y, align 8, !tbaa !35  ; 6 uses
  %i.kd = load ptr, ptr %i.de, align 8, !tbaa !40
  %.not.i270 = icmp eq ptr %i.kc, %i.kd
  br i1 %.not.i270, label %bb.ay, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i272

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i272: ; preds = %._crit_edge734
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i8 0, i64 24, i1 false)
  %i.ke = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #21
          to label %.noexc276 unwind label %bb.bc ; 6 uses

.noexc276:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i272
  store ptr %i.ke, ptr %i.kc, align 8, !tbaa !38
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  store ptr %i.ke, ptr %i.kf, align 8, !tbaa !66
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.jt
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  store ptr %i.kg, ptr %i.kh, align 8, !tbaa !39
  %i.ki = load ptr, ptr %20, align 8, !tbaa !68   ; 4 uses
  %i.kj = load ptr, ptr %i.dd, align 8, !tbaa !68
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.ki to i64
  %i.km = sub i64 %i.kk, %i.kl                    ; 4 uses
  %i.kn = icmp sgt i64 %i.km, 8
  br i1 %i.kn, label %bb.av, label %bb.aw, !prof !69

bb.av:                                            ; preds = %.noexc276
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ke, ptr align 8 %i.ki, i64 %i.km, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i273

bb.aw:                                            ; preds = %.noexc276
  %i.ko = icmp eq i64 %i.km, 8
  br i1 %i.ko, label %bb.ax, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i273

bb.ax:                                            ; preds = %bb.aw
  %i.kp = load double, ptr %i.ki, align 8, !tbaa !70
  store double %i.kp, ptr %i.ke, align 8, !tbaa !70
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i273

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i273:           ; preds = %bb.ax, %bb.aw, %bb.av
  %i.kq = getelementptr inbounds i8, ptr %i.ke, i64 %i.km
  store ptr %i.kq, ptr %i.kf, align 8, !tbaa !66
  %i.kr = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  store ptr %i.ks, ptr %i.y, align 8, !tbaa !35
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit278

bb.ay:                                            ; preds = %._crit_edge734
  invoke void @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.kc, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit278_crit_edge unwind label %bb.bc

._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit278_crit_edge: ; preds = %bb.ay
  %.pre792 = load ptr, ptr %20, align 8, !tbaa !38
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit278

bb.az:                                            ; preds = %bb.au
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit284

scalar.ph:                                        ; preds = %.lr.ph733, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %.lr.ph733 ] ; 3 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !70
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv
  store double %i.kv, ptr %i.kw, align 8, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.js
  br i1 %exitcond.not, label %._crit_edge734, label %scalar.ph, !llvm.loop !77

_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit278: ; preds = %._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit278_crit_edge, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i273
  %i.kx = phi ptr [ %.pre792, %._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit278_crit_edge ], [ %i.ki, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i273 ] ; 3 uses
  %.not.i.i.i279 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i279, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit278
  %i.ky = load ptr, ptr %i.dc, align 8, !tbaa !39
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lb) #18
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit278
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %bb.fh

bb.bc:                                            ; preds = %bb.ay, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i272
  %lpad.loopexit557 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lc = load ptr, ptr %20, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i282 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i282, label %_ZNSt6vectorIdSaIdEED2Ev.exit284, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ld = load ptr, ptr %i.dc, align 8, !tbaa !39
  %i.le = ptrtoint ptr %i.ld to i64
  %i.lf = ptrtoint ptr %i.lc to i64
  %i.lg = sub i64 %i.le, %i.lf
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lg) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit284

_ZNSt6vectorIdSaIdEED2Ev.exit284:                 ; preds = %bb.bd, %bb.bc, %bb.az
  %.pn158 = phi { ptr, i32 } [ %i.kt, %bb.az ], [ %lpad.loopexit557, %bb.bc ], [ %lpad.loopexit557, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %bb.fg

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266.thread506: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread505, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266
  %i.lh = load i64, ptr %i.cf, align 8, !tbaa !19
  %i.li = icmp eq i64 %i.lh, %i.ei
  br i1 %i.li, label %bb.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit286.thread508

bb.be:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit266.thread506
  %i.lj = icmp eq i64 %i.ei, 0
  br i1 %i.lj, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit286.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit286

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit286: ; preds = %bb.be
  %i.lk = load ptr, ptr %13, align 8, !tbaa !18
  %bcmp.i.i285 = call i32 @bcmp(ptr %i.lk, ptr nonnull %i.f, i64 %i.ei)
  %i.ll = icmp eq i32 %bcmp.i.i285, 0
  br i1 %i.ll, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit286.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit286.thread508

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit286.thread: ; preds = %bb.be, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit286
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #17
  %i.lm = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ej, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #17
  %i.ln = icmp eq i32 %i.lm, 1
  br i1 %i.ln, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit286.thread, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit312
  %.091731 = phi ptr [ %i.lq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit312 ], [ %i.ej, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit286.thread ]
  %i.lo = load i32, ptr %i.j, align 4, !tbaa !71
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds i8, ptr %.091731, i64 %i.lp ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #17
  %i.lr = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #17
  %i.ls = icmp eq i32 %i.lr, 3
  br i1 %i.ls, label %bb.bf, label %bb.by

bb.bf:                                            ; preds = %.lr.ph
  %i.lt = load i64, ptr %i.k, align 8, !tbaa !20
  %i.lu = trunc i64 %i.lt to i32                  ; 2 uses
  %i.lv = icmp slt i32 %i.lu, 0
  br i1 %i.lv, label %bb.bg, label %_ZZN3igl7readOBJIdiEEbP8_IO_FILERSt6vectorIS3_IT_SaIS4_EESaIS6_EES9_S9_RS3_IS3_IT0_SaISA_EESaISC_EESF_SF_RS3_ISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_EESaISN_EEENKUliE_clEi.exit

bb.bg:                                            ; preds = %bb.bf
  %i.lw = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.lx = load ptr, ptr %1, align 8, !tbaa !34
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = sdiv exact i64 %i.ma, 24
  %i.mc = trunc i64 %i.mb to i32
  br label %_ZZN3igl7readOBJIdiEEbP8_IO_FILERSt6vectorIS3_IT_SaIS4_EESaIS6_EES9_S9_RS3_IS3_IT0_SaISA_EESaISC_EESF_SF_RS3_ISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_EESaISN_EEENKUliE_clEi.exit

_ZZN3igl7readOBJIdiEEbP8_IO_FILERSt6vectorIS3_IT_SaIS4_EESaIS6_EES9_S9_RS3_IS3_IT0_SaISA_EESaISC_EESF_SF_RS3_ISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_EESaISN_EEENKUliE_clEi.exit: ; preds = %bb.bf, %bb.bg
  %.pn.i = phi i32 [ %i.mc, %bb.bg ], [ -1, %bb.bf ]
  %i.md = add i32 %.pn.i, %i.lu                   ; 2 uses
  %i.me = load ptr, ptr %i.cr, align 8, !tbaa !72 ; 4 uses
  %i.mf = load ptr, ptr %i.cs, align 8, !tbaa !29
  %.not.i.i287 = icmp eq ptr %i.me, %i.mf
  br i1 %.not.i.i287, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZZN3igl7readOBJIdiEEbP8_IO_FILERSt6vectorIS3_IT_SaIS4_EESaIS6_EES9_S9_RS3_IS3_IT0_SaISA_EESaISC_EESF_SF_RS3_ISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_EESaISN_EEENKUliE_clEi.exit
  store i32 %i.md, ptr %i.me, align 4, !tbaa !71
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  store ptr %i.mg, ptr %i.cr, align 8, !tbaa !72
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.bi:                                            ; preds = %_ZZN3igl7readOBJIdiEEbP8_IO_FILERSt6vectorIS3_IT_SaIS4_EESaIS6_EES9_S9_RS3_IS3_IT0_SaISA_EESaISC_EESF_SF_RS3_ISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_EESaISN_EEENKUliE_clEi.exit
  %i.mh = load ptr, ptr %21, align 8, !tbaa !28   ; 4 uses
  %i.mi = ptrtoint ptr %i.me to i64
  %i.mj = ptrtoint ptr %i.mh to i64               ; 2 uses
  %i.mk = sub i64 %i.mi, %i.mj                    ; 5 uses
  %i.ml = icmp eq i64 %i.mk, 9223372036854775804
  br i1 %i.ml, label %bb.bj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #20
          to label %.noexc289 unwind label %.loopexit.split-lp536

.noexc289:                                        ; preds = %bb.bj
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bi
  %i.mm = ashr exact i64 %i.mk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mm, i64 1)
  %i.mn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mm ; 2 uses
  %i.mo = icmp ult i64 %i.mn, %i.mm
  %i.mp = call i64 @llvm.umin.i64(i64 %i.mn, i64 2305843009213693951)
  %i.mq = select i1 %i.mo, i64 2305843009213693951, i64 %i.mp ; 3 uses
  %.not.i.i.i.i288 = icmp ne i64 %i.mq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i288)
  %i.mr = shl nuw nsw i64 %i.mq, 2
  %i.ms = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mr) #21
          to label %.noexc290 unwind label %.loopexit535 ; 4 uses

.noexc290:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.mt = getelementptr inbounds i8, ptr %i.ms, i64 %i.mk ; 2 uses
  store i32 %i.md, ptr %i.mt, align 4, !tbaa !71
  %i.mu = icmp sgt i64 %i.mk, 0
  br i1 %i.mu, label %bb.bk, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.bk:                                            ; preds = %.noexc290
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ms, ptr align 4 %i.mh, i64 %i.mk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bk, %.noexc290
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.mh, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.mw = load ptr, ptr %i.cs, align 8, !tbaa !29
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = sub i64 %i.mx, %i.mj
  call void @_ZdlPvm(ptr noundef nonnull %i.mh, i64 noundef %i.my) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bl, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ms, ptr %21, align 8, !tbaa !28
  store ptr %i.mv, ptr %i.cr, align 8, !tbaa !72
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.mq
  store ptr %i.mz, ptr %i.cs, align 8, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.bh
  %i.na = load i64, ptr %i.l, align 8, !tbaa !20
  %i.nb = trunc i64 %i.na to i32                  ; 2 uses
  %i.nc = icmp slt i32 %i.nb, 0
  br i1 %i.nc, label %bb.bm, label %_ZZN3igl7readOBJIdiEEbP8_IO_FILERSt6vectorIS3_IT_SaIS4_EESaIS6_EES9_S9_RS3_IS3_IT0_SaISA_EESaISC_EESF_SF_RS3_ISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_EESaISN_EEENKUliE0_clEi.exit

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.nd = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.ne = load ptr, ptr %2, align 8, !tbaa !34
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = sub i64 %i.nf, %i.ng
  %i.ni = sdiv exact i64 %i.nh, 24
  %i.nj = trunc i64 %i.ni to i32
  br label %_ZZN3igl7readOBJIdiEEbP8_IO_FILERSt6vectorIS3_IT_SaIS4_EESaIS6_EES9_S9_RS3_IS3_IT0_SaISA_EESaISC_EESF_SF_RS3_ISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_EESaISN_EEENKUliE0_clEi.exit

_ZZN3igl7readOBJIdiEEbP8_IO_FILERSt6vectorIS3_IT_SaIS4_EESaIS6_EES9_S9_RS3_IS3_IT0_SaISA_EESaISC_EESF_SF_RS3_ISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_EESaISN_EEENKUliE0_clEi.exit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.bm
  %.pn.i291 = phi i32 [ %i.nj, %bb.bm ], [ -1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %i.nk = add i32 %.pn.i291, %i.nb                ; 2 uses
  %i.nl = load ptr, ptr %i.cv, align 8, !tbaa !72 ; 4 uses
  %i.nm = load ptr, ptr %i.cw, align 8, !tbaa !29
  %.not.i.i292 = icmp eq ptr %i.nl, %i.nm
  br i1 %.not.i.i292, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZZN3igl7readOBJIdiEEbP8_IO_FILERSt6vectorIS3_IT_SaIS4_EESaIS6_EES9_S9_RS3_IS3_IT0_SaISA_EESaISC_EESF_SF_RS3_ISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_EESaISN_EEENKUliE0_clEi.exit
  store i32 %i.nk, ptr %i.nl, align 4, !tbaa !71
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  store ptr %i.nn, ptr %i.cv, align 8, !tbaa !72
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit301

bb.bo:                                            ; preds = %_ZZN3igl7readOBJIdiEEbP8_IO_FILERSt6vectorIS3_IT_SaIS4_EESaIS6_EES9_S9_RS3_IS3_IT0_SaISA_EESaISC_EESF_SF_RS3_ISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_EESaISN_EEENKUliE0_clEi.exit
  %i.no = load ptr, ptr %22, align 8, !tbaa !28   ; 4 uses
end_hunk_0
