inline.NumInlined: 334
inline.NumDeleted: 192
begin_hunk_0_@_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #19
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #19
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #19
  resume { ptr, i32 } %i.p
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #1

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_ZN6Assimp11HMPImporter19InternReadFile_HMP4Ev(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.22)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #19
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11HMPImporter19InternReadFile_HMP5Ev(ptr noundef nonnull align 8 dereferenceable(159) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8
  tail call void @_ZN6Assimp11HMPImporter21ValidateHeader_HMP457Ev(ptr noundef nonnull align 8 dereferenceable(159) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1, ptr %i.g, align 8
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #21
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.h, ptr %i.j, align 8
  %i.k = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #21 ; 9 uses
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1272
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1312
  store ptr null, ptr %i.q, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.n, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.o, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.p, i8 0, i64 36, i1 false)
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  store ptr %i.k, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.v = load i32, ptr %i.u, align 1
  %.fr = freeze i32 %i.v                          ; 3 uses
  %i.w = sext i32 %.fr to i64
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.w, i64 12) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  %i.z = extractvalue { i64, i1 } %i.x, 0         ; 3 uses
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z        ; 3 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #21 ; 3 uses
  %i.ac = icmp eq i32 %.fr, 0
  br i1 %i.ac, label %.loopexit51.thread, label %.loopexit.loopexit

.loopexit51.thread:                               ; preds = %bb.a
  store ptr %i.ab, ptr %i.n, align 8
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #21
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.ae = add nsw i64 %i.z, -12                   ; 2 uses
  %i.af = urem i64 %i.ae, 12
  %i.ag = sub nuw nsw i64 %i.ae, %i.af
  %i.ah = add nsw i64 %i.ag, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 %i.ah, i1 false)
  store ptr %i.ab, ptr %i.n, align 8
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #21 ; 2 uses
  %i.aj = add nsw i64 %i.z, -12                   ; 2 uses
  %i.ak = urem i64 %i.aj, 12
  %i.al = sub nuw nsw i64 %i.aj, %i.ak
  %i.am = add nsw i64 %i.al, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.am, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit51.thread, %.loopexit.loopexit
  %i.an = phi ptr [ %i.ad, %.loopexit51.thread ], [ %i.ai, %.loopexit.loopexit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = sitofp i32 %.fr to float
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ar = load float, ptr %i.aq, align 1          ; 2 uses
  %i.as = fdiv float %i.ap, %i.ar
  %i.at = fptoui float %i.as to i32               ; 6 uses
  %i.au = fptoui float %i.ar to i32               ; 9 uses
  call void @_ZN6Assimp11HMPImporter14CreateMaterialEPKhPS2_(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.av = load ptr, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 36 ; 3 uses
  store ptr %i.aw, ptr %i.a, align 8
  %i.ax = zext i32 %i.at to i64
  %i.ay = zext i32 %i.au to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = mul i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba
  tail call void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.bb)
  %.not63 = icmp eq i32 %i.at, 0                  ; 2 uses
  br i1 %.not63, label %._crit_edge62.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.loopexit
  %.not64 = icmp eq i32 %i.au, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br i1 %.not64, label %._crit_edge62.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.be = load ptr, ptr %i.n, align 8
  %i.bf = load ptr, ptr %i.ao, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.04161 = phi i32 [ %3, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04260 = phi ptr [ %i.bz, %._crit_edge ], [ %i.aw, %.preheader.preheader ]
  %.04359 = phi ptr [ %i.by, %._crit_edge ], [ %i.bf, %.preheader.preheader ]
  %.04558 = phi ptr [ %i.bx, %._crit_edge ], [ %i.be, %.preheader.preheader ]
  %i.bg = uitofp i32 %.04161 to float
  br label %bb.b

._crit_edge62.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.loopexit
  %1 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %2 = load i32, ptr %1, align 1
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %3 = add nuw i32 %.04161, 1                     ; 2 uses
  %exitcond68.not = icmp eq i32 %3, %i.at
  br i1 %exitcond68.not, label %._crit_edge62.split, label %.preheader, !llvm.loop !5

bb.b:                                             ; preds = %.preheader, %bb.b
  %.04055 = phi i32 [ 0, %.preheader ], [ %i.ca, %bb.b ] ; 2 uses
  %.154 = phi ptr [ %.04260, %.preheader ], [ %i.bz, %bb.b ] ; 3 uses
  %.14453 = phi ptr [ %.04359, %.preheader ], [ %i.by, %bb.b ] ; 2 uses
  %.14652 = phi ptr [ %.04558, %.preheader ], [ %i.bx, %bb.b ] ; 4 uses
  %i.bh = uitofp i32 %.04055 to float
  %i.bi = load float, ptr %i.bc, align 1
  %i.bj = fmul float %i.bi, %i.bh
  store float %i.bj, ptr %.14652, align 4
  %i.bk = load float, ptr %i.bd, align 1
  %i.bl = fmul float %i.bk, %i.bg
  %i.bm = getelementptr inbounds nuw i8, ptr %.14652, i64 4
  store float %i.bl, ptr %i.bm, align 4
  %i.bn = load i16, ptr %.154, align 1
  %i.bo = uitofp i16 %i.bn to float
  %i.bp = fdiv nnan float %i.bo, 6.553500e+04
  %i.bq = fadd nnan float %i.bp, -5.000000e-01
  %i.br = load float, ptr %i.bc, align 1
  %i.bs = fmul float %i.br, %i.bq
  %i.bt = fmul float %i.bs, 8.000000e+00
  %i.bu = getelementptr inbounds nuw i8, ptr %.14652, i64 8
  store float %i.bt, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.154, i64 2
  %i.bw = load i8, ptr %i.bv, align 1
  tail call void @_ZN6Assimp3MD217LookupNormalIndexEhR10aiVector3tIfE(i8 noundef zeroext %i.bw, ptr noundef nonnull align 4 dereferenceable(12) %.14453)
  %i.bx = getelementptr inbounds nuw i8, ptr %.14652, i64 12 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.14453, i64 12 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.154, i64 4 ; 2 uses
  %i.ca = add nuw i32 %.04055, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.au
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !7

bb.c:                                             ; preds = %._crit_edge62.split
  %i.cb = load ptr, ptr %i.e, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 112
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  %i.ci = icmp eq i32 %i.au, 0
  %or.cond.i = or i1 %i.ci, %.not63
  %or.cond = select i1 %i.ch, i1 true, i1 %or.cond.i
  br i1 %or.cond, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %.split.i

.split.i:                                         ; preds = %bb.c
  %i.cj = uitofp i32 %i.at to float               ; 2 uses
  %i.ck = fdiv float 1.000000e+00, %i.cj          ; 2 uses
  %i.cl = fdiv float %i.ck, %i.cj
  %i.cm = fadd float %i.ck, %i.cl
  %i.cn = uitofp i32 %i.au to float               ; 2 uses
  %i.co = fdiv float 1.000000e+00, %i.cn          ; 2 uses
  %i.cp = fdiv float %i.co, %i.cn
  %i.cq = fadd float %i.co, %i.cp                 ; 2 uses
  %i.cr = zext i32 %i.au to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.au, 4
  %n.vec = and i64 %i.cr, 4294967292              ; 4 uses
  %i.cs = trunc nuw i64 %n.vec to i32
  %i.ct = mul nuw nsw i64 %n.vec, 12
  %broadcast.splatinsert82 = insertelement <4 x float> poison, float %i.cq, i64 0
  %broadcast.splat83 = shufflevector <4 x float> %broadcast.splatinsert82, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.cr
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.split.i
  %.02330.i = phi i32 [ 0, %.split.i ], [ %4, %._crit_edge.i ] ; 2 uses
  %.02429.i = phi ptr [ %i.cg, %.split.i ], [ %.lcssa, %._crit_edge.i ] ; 3 uses
  %i.cu = uitofp i32 %.02330.i to float
  %i.cv = fmul float %i.cm, %i.cu                 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.cw = getelementptr i8, ptr %.02429.i, i64 %i.ct ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cx = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %.02429.i, i64 %i.cx
  %i.cy = uitofp <4 x i32> %vec.ind to <4 x float>
  %i.cz = fmul <4 x float> %broadcast.splat83, %i.cy
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> %broadcast.splat, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.da, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.028.i.ph = phi i32 [ 0, %.preheader.i ], [ %i.cs, %middle.block ]
  %.127.i.ph = phi ptr [ %.02429.i, %.preheader.i ], [ %i.cw, %middle.block ]
  %i.dc = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.cw, %middle.block ], [ %i.dh, %scalar.ph ]
  %4 = add nuw i32 %.02330.i, 1                   ; 2 uses
  %exitcond31.not.i = icmp eq i32 %4, %i.at
  br i1 %exitcond31.not.i, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %.preheader.i, !llvm.loop !11

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.028.i = phi i32 [ %i.dg, %scalar.ph ], [ %.028.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.127.i = phi ptr [ %i.dh, %scalar.ph ], [ %.127.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.127.i, i64 4
  %i.de = uitofp i32 %.028.i to float
  %i.df = fmul float %i.cq, %i.de
  store float %i.df, ptr %.127.i, align 4
  store <2 x float> %i.dc, ptr %i.dd, align 4
  %i.dg = add nuw i32 %.028.i, 1                  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.127.i, i64 12 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dg, %i.au
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !12

_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit: ; preds = %._crit_edge.i, %bb.c, %._crit_edge62.split
  tail call void @_ZN6Assimp11HMPImporter20CreateOutputFaceListEjj(ptr noundef nonnull align 8 dereferenceable(159) %0, i32 noundef %i.au, i32 noundef %i.at)
  %i.di = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #21 ; 3 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.di)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit
  %i.dj = load ptr, ptr %i.e, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.di, ptr %i.dk, align 8
  %i.dl = load ptr, ptr %i.e, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8            ; 3 uses
  store i32 12, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.do, ptr noundef nonnull align 1 dereferenceable(12) @.str.23, i64 12, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i8 0, ptr %i.dp, align 4
  %.pre = load ptr, ptr %i.e, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1120
  store i32 1, ptr %i.ds, align 8
  %i.dt = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #21
  %i.du = load ptr, ptr %i.e, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1128
  store ptr %i.dt, ptr %i.dx, align 8
  %i.dy = load ptr, ptr %i.e, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1128
  %i.ec = load ptr, ptr %i.eb, align 8
  store i32 0, ptr %i.ec, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.d:                                             ; preds = %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef 1144) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  resume { ptr, i32 } %i.ed
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev(ptr noundef nonnull align 8 dereferenceable(159) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8
  tail call void @_ZN6Assimp11HMPImporter21ValidateHeader_HMP457Ev(ptr noundef nonnull align 8 dereferenceable(159) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1, ptr %i.g, align 8
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #21
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.h, ptr %i.j, align 8
  %i.k = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #21 ; 9 uses
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1272
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1312
  store ptr null, ptr %i.q, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.n, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.o, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.p, i8 0, i64 36, i1 false)
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  store ptr %i.k, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.v = load i32, ptr %i.u, align 1
  %.fr = freeze i32 %i.v                          ; 3 uses
  %i.w = sext i32 %.fr to i64
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.w, i64 12) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  %i.z = extractvalue { i64, i1 } %i.x, 0         ; 3 uses
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z        ; 3 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #21 ; 3 uses
  %i.ac = icmp eq i32 %.fr, 0
  br i1 %i.ac, label %.loopexit55.thread, label %.loopexit.loopexit

.loopexit55.thread:                               ; preds = %bb.a
  store ptr %i.ab, ptr %i.n, align 8
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #21
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.ae = add nsw i64 %i.z, -12                   ; 2 uses
  %i.af = urem i64 %i.ae, 12
  %i.ag = sub nuw nsw i64 %i.ae, %i.af
  %i.ah = add nsw i64 %i.ag, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 %i.ah, i1 false)
  store ptr %i.ab, ptr %i.n, align 8
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #21 ; 2 uses
  %i.aj = add nsw i64 %i.z, -12                   ; 2 uses
  %i.ak = urem i64 %i.aj, 12
  %i.al = sub nuw nsw i64 %i.aj, %i.ak
  %i.am = add nsw i64 %i.al, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.am, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit55.thread, %.loopexit.loopexit
  %i.an = phi ptr [ %i.ad, %.loopexit55.thread ], [ %i.ai, %.loopexit.loopexit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = sitofp i32 %.fr to float
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ar = load float, ptr %i.aq, align 1          ; 2 uses
  %i.as = fdiv float %i.ap, %i.ar
  %i.at = fptoui float %i.as to i32               ; 6 uses
  %i.au = fptoui float %i.ar to i32               ; 12 uses
  call void @_ZN6Assimp11HMPImporter14CreateMaterialEPKhPS2_(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.av = load ptr, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 36 ; 3 uses
  store ptr %i.aw, ptr %i.a, align 8
  %i.ax = zext i32 %i.at to i64
  %i.ay = zext i32 %i.au to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = mul i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba
  tail call void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.bb)
  %.not67 = icmp eq i32 %i.at, 0                  ; 2 uses
  br i1 %.not67, label %._crit_edge66.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.loopexit
  %.not68 = icmp eq i32 %i.au, 0
  %i.bc = getelementptr i8, ptr %i.c, i64 36      ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br i1 %.not68, label %._crit_edge66.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.be = load ptr, ptr %i.n, align 8
  %i.bf = load ptr, ptr %i.ao, align 8
  %i.bg = add i32 %i.au, -1
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 12
  %i.bj = add nuw nsw i64 %i.bi, 12               ; 2 uses
  %scevgep87.a = getelementptr i8, ptr %i.c, i64 44 ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bh, 2
  %i.bl = zext i32 %i.au to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.au, 5
  %n.mod.vf = and i64 %i.bl, 3                    ; 2 uses
  %i.bm = icmp eq i64 %n.mod.vf, 0
  %i.bn = select i1 %i.bm, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.bl, %i.bn               ; 4 uses
  %i.bo = trunc i64 %n.vec to i32
  %i.bp = shl nsw i64 %n.vec, 2
  %i.bq = mul nsw i64 %n.vec, 12                  ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.04565 = phi i32 [ %3, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04664 = phi ptr [ %i.fl, %._crit_edge ], [ %i.aw, %.preheader.preheader ] ; 10 uses
  %.04763 = phi ptr [ %i.fk, %._crit_edge ], [ %i.bf, %.preheader.preheader ] ; 11 uses
  %.04962 = phi ptr [ %i.fj, %._crit_edge ], [ %i.be, %.preheader.preheader ] ; 8 uses
  %i.br = uitofp i32 %.04565 to float             ; 2 uses
  br i1 %min.iters.check, label %_ZN10aiVector3tIfEdVEf.exit.i.preheader, label %vector.memcheck

_ZN10aiVector3tIfEdVEf.exit.i.preheader:          ; preds = %vector.body, %vector.memcheck, %.preheader
  %.04459.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %i.bo, %vector.body ]
  %.158.ph = phi ptr [ %.04664, %vector.memcheck ], [ %.04664, %.preheader ], [ %i.bt, %vector.body ]
  %.14857.ph = phi ptr [ %.04763, %vector.memcheck ], [ %.04763, %.preheader ], [ %i.bu, %vector.body ]
  %.15056.ph = phi ptr [ %.04962, %vector.memcheck ], [ %.04962, %.preheader ], [ %i.bv, %vector.body ]
  br label %_ZN10aiVector3tIfEdVEf.exit.i

vector.memcheck:                                  ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %.04962, i64 %i.bj ; 3 uses
  %scevgep86 = getelementptr i8, ptr %.04763, i64 %i.bj ; 3 uses
  %i.bs = getelementptr i8, ptr %.04664, i64 %i.bk
  %scevgep88 = getelementptr i8, ptr %i.bs, i64 4 ; 2 uses
  %bound0 = icmp ult ptr %.04962, %scevgep86
  %bound1 = icmp ult ptr %.04763, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound089 = icmp ult ptr %.04962, %scevgep87.a
  %bound190 = icmp ult ptr %i.bc, %scevgep
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict, %found.conflict91
  %bound092 = icmp ult ptr %.04962, %scevgep88
  %bound193 = icmp ult ptr %.04664, %scevgep
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  %bound096 = icmp ult ptr %.04763, %scevgep87.a
  %bound197 = icmp ult ptr %i.bc, %scevgep86
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %.04763, %scevgep88
  %bound1101 = icmp ult ptr %.04664, %scevgep86
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  br i1 %conflict.rdx103, label %_ZN10aiVector3tIfEdVEf.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bt = getelementptr i8, ptr %.04664, i64 %i.bp
  %i.bu = getelementptr i8, ptr %.04763, i64 %i.bq
  %i.bv = getelementptr i8, ptr %.04962, i64 %i.bq
  %i.bw = load float, ptr %i.bc, align 1, !alias.scope !13
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = load float, ptr %i.bd, align 1, !alias.scope !13
  %i.by = fmul float %i.bx, %i.br
  %broadcast.splatinsert114 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat115 = shufflevector <4 x float> %broadcast.splatinsert114, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = load float, ptr %i.bc, align 1, !alias.scope !13
  %broadcast.splatinsert112 = insertelement <4 x float> poison, float %i.bz, i64 0
  %broadcast.splat113 = shufflevector <4 x float> %broadcast.splatinsert112, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.04664, i64 %i.ca ; 3 uses
  %i.cb = getelementptr i8, ptr %.04664, i64 %i.ca ; 2 uses
  %i.cc = getelementptr i8, ptr %.04664, i64 %i.ca ; 2 uses
  %i.cd = getelementptr i8, ptr %.04664, i64 %i.ca ; 2 uses
  %i.ce = mul i64 %index, 12                      ; 5 uses
  %next.gep107 = getelementptr i8, ptr %.04763, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %.04763, i64 %i.ce
  %next.gep108 = getelementptr i8, ptr %i.cf, i64 12
  %i.cg = getelementptr i8, ptr %.04763, i64 %i.ce
  %next.gep109 = getelementptr i8, ptr %i.cg, i64 24
  %i.ch = getelementptr i8, ptr %.04763, i64 %i.ce
  %next.gep110 = getelementptr i8, ptr %i.ch, i64 36
  %next.gep111 = getelementptr i8, ptr %.04962, i64 %i.ce
  %i.ci = uitofp <4 x i32> %vec.ind to <4 x float>
  %i.cj = fmul <4 x float> %broadcast.splat, %i.ci
  %wide.vec = load <8 x i16>, ptr %next.gep, align 1, !alias.scope !16
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ck = uitofp <4 x i16> %strided.vec to <4 x float>
  %i.cl = fdiv nnan <4 x float> %i.ck, splat (float 6.553500e+04)
  %i.cm = fadd nnan <4 x float> %i.cl, splat (float -5.000000e-01)
  %i.cn = fmul <4 x float> %broadcast.splat113, %i.cm
  %i.co = fmul <4 x float> %i.cn, splat (float 8.000000e+00)
  %i.cp = shufflevector <4 x float> %i.cj, <4 x float> %broadcast.splat115, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.cp, <8 x float> %i.cq, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep111, align 4, !alias.scope !18, !noalias !20
  %i.cr = getelementptr i8, ptr %i.cb, i64 6
  %i.cs = getelementptr i8, ptr %i.cc, i64 10
  %i.ct = getelementptr i8, ptr %i.cd, i64 14
  %i.cu = load <16 x i8>, ptr %next.gep, align 1
  %i.cv = shufflevector <16 x i8> %i.cu, <16 x i8> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cw = load i8, ptr %i.cr, align 1, !alias.scope !16
  %i.cx = load i8, ptr %i.cs, align 1, !alias.scope !16
  %i.cy = load i8, ptr %i.ct, align 1, !alias.scope !16
  %i.cz = insertelement <4 x i8> %i.cv, i8 %i.cw, i64 1
  %i.da = insertelement <4 x i8> %i.cz, i8 %i.cx, i64 2
  %i.db = insertelement <4 x i8> %i.da, i8 %i.cy, i64 3
  %i.dc = sitofp <4 x i8> %i.db to <4 x float>
  %i.dd = fmul nnan <4 x float> %i.dc, splat (float 7.812500e-03) ; 7 uses
  %i.de = extractelement <4 x float> %i.dd, i64 0
  %i.df = extractelement <4 x float> %i.dd, i64 1
  %i.dg = extractelement <4 x float> %i.dd, i64 2
  %i.dh = extractelement <4 x float> %i.dd, i64 3
  store float %i.de, ptr %next.gep107, align 4, !alias.scope !22, !noalias !23
  store float %i.df, ptr %next.gep108, align 4, !alias.scope !22, !noalias !23
  store float %i.dg, ptr %next.gep109, align 4, !alias.scope !22, !noalias !23
  store float %i.dh, ptr %next.gep110, align 4, !alias.scope !22, !noalias !23
  %i.di = getelementptr i8, ptr %i.cb, i64 7
  %i.dj = getelementptr i8, ptr %i.cc, i64 11
  %i.dk = getelementptr i8, ptr %i.cd, i64 15
  %i.dl = load <16 x i8>, ptr %next.gep, align 1
  %i.dm = shufflevector <16 x i8> %i.dl, <16 x i8> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.dn = load i8, ptr %i.di, align 1, !alias.scope !16
  %i.do = load i8, ptr %i.dj, align 1, !alias.scope !16
  %i.dp = load i8, ptr %i.dk, align 1, !alias.scope !16
  %i.dq = insertelement <4 x i8> %i.dm, i8 %i.dn, i64 1
  %i.dr = insertelement <4 x i8> %i.dq, i8 %i.do, i64 2
  %i.ds = insertelement <4 x i8> %i.dr, i8 %i.dp, i64 3
  %i.dt = sitofp <4 x i8> %i.ds to <4 x float>
  %i.du = fmul nnan <4 x float> %i.dt, splat (float 7.812500e-03) ; 3 uses
  %i.dv = fmul nnan <4 x float> %i.du, %i.du
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.dd, <4 x float> %i.dv)
  %i.dx = fadd <4 x float> %i.dw, splat (float 1.000000e+00)
  %i.dy = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.dx)
  %i.dz = fdiv <4 x float> splat (float 1.000000e+00), %i.dy ; 2 uses
  %i.ea = shufflevector <4 x float> %i.dd, <4 x float> %i.du, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eb = shufflevector <4 x float> %i.dz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ec = fmul <8 x float> %i.ea, %i.eb
  %i.ed = shufflevector <4 x float> %i.dz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec116 = shufflevector <8 x float> %i.ec, <8 x float> %i.ed, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec116, ptr %next.gep107, align 4, !alias.scope !22, !noalias !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %_ZN10aiVector3tIfEdVEf.exit.i.preheader, label %vector.body, !llvm.loop !24

._crit_edge66.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.loopexit
  %1 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %2 = load i32, ptr %1, align 1
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %bb.b

._crit_edge:                                      ; preds = %_ZN10aiVector3tIfEdVEf.exit.i
  %3 = add nuw i32 %.04565, 1                     ; 2 uses
  %exitcond72.not = icmp eq i32 %3, %i.at
  br i1 %exitcond72.not, label %._crit_edge66.split, label %.preheader, !llvm.loop !25

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.preheader, %_ZN10aiVector3tIfEdVEf.exit.i
  %.04459 = phi i32 [ %i.fm, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.04459.ph, %_ZN10aiVector3tIfEdVEf.exit.i.preheader ] ; 2 uses
  %.158 = phi ptr [ %i.fl, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.158.ph, %_ZN10aiVector3tIfEdVEf.exit.i.preheader ] ; 4 uses
  %.14857 = phi ptr [ %i.fk, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.14857.ph, %_ZN10aiVector3tIfEdVEf.exit.i.preheader ] ; 5 uses
  %.15056 = phi ptr [ %i.fj, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.15056.ph, %_ZN10aiVector3tIfEdVEf.exit.i.preheader ] ; 4 uses
  %i.ef = uitofp i32 %.04459 to float
  %i.eg = load float, ptr %i.bc, align 1
  %i.eh = fmul float %i.eg, %i.ef
  store float %i.eh, ptr %.15056, align 4
  %i.ei = load float, ptr %i.bd, align 1
  %i.ej = fmul float %i.ei, %i.br
  %i.ek = getelementptr inbounds nuw i8, ptr %.15056, i64 4
  store float %i.ej, ptr %i.ek, align 4
  %i.el = load i16, ptr %.158, align 1
  %i.em = uitofp i16 %i.el to float
  %i.en = fdiv nnan float %i.em, 6.553500e+04
  %i.eo = fadd nnan float %i.en, -5.000000e-01
  %i.ep = load float, ptr %i.bc, align 1
  %i.eq = fmul float %i.ep, %i.eo
  %i.er = fmul float %i.eq, 8.000000e+00
  %i.es = getelementptr inbounds nuw i8, ptr %.15056, i64 8
  store float %i.er, ptr %i.es, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %.158, i64 2
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = sitofp i8 %i.eu to float
  %i.ew = fmul nnan float %i.ev, 7.812500e-03     ; 4 uses
  store float %i.ew, ptr %.14857, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.158, i64 3
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = sitofp i8 %i.ey to float
  %i.fa = fmul nnan float %i.ez, 7.812500e-03     ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.14857, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.14857, i64 8
  %i.fd = fmul nnan float %i.fa, %i.fa
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.fd)
  %i.ff = fadd float %i.fe, 1.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ff)
  %i.fg = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.fh = fmul float %i.ew, %i.fg
  store float %i.fh, ptr %.14857, align 4
  %i.fi = fmul float %i.fa, %i.fg
  store float %i.fi, ptr %i.fb, align 4
  store float %i.fg, ptr %i.fc, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.15056, i64 12 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.14857, i64 12 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.158, i64 4 ; 2 uses
  %i.fm = add nuw i32 %.04459, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.fm, %i.au
  br i1 %exitcond.not, label %._crit_edge, label %_ZN10aiVector3tIfEdVEf.exit.i, !llvm.loop !26

bb.b:                                             ; preds = %._crit_edge66.split
  %i.fn = load ptr, ptr %i.e, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 112
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  %i.fu = icmp eq i32 %i.au, 0
  %or.cond.i = or i1 %i.fu, %.not67
  %or.cond = select i1 %i.ft, i1 true, i1 %or.cond.i
  br i1 %or.cond, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.fv = uitofp i32 %i.at to float               ; 2 uses
  %i.fw = fdiv float 1.000000e+00, %i.fv          ; 2 uses
  %i.fx = fdiv float %i.fw, %i.fv
  %i.fy = fadd float %i.fw, %i.fx
  %i.fz = uitofp i32 %i.au to float               ; 2 uses
  %i.ga = fdiv float 1.000000e+00, %i.fz          ; 2 uses
  %i.gb = fdiv float %i.ga, %i.fz
  %i.gc = fadd float %i.ga, %i.gb                 ; 2 uses
  %i.gd = zext i32 %i.au to i64                   ; 2 uses
  %min.iters.check121 = icmp ult i32 %i.au, 4
  %n.vec124 = and i64 %i.gd, 4294967292           ; 4 uses
  %i.ge = trunc nuw i64 %n.vec124 to i32
  %i.gf = mul nuw nsw i64 %n.vec124, 12
  %broadcast.splatinsert127 = insertelement <4 x float> poison, float %i.gc, i64 0
  %broadcast.splat128 = shufflevector <4 x float> %broadcast.splatinsert127, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec124, %i.gd
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.split.i
  %.02330.i = phi i32 [ 0, %.split.i ], [ %4, %._crit_edge.i ] ; 2 uses
  %.02429.i = phi ptr [ %i.fs, %.split.i ], [ %.lcssa, %._crit_edge.i ] ; 3 uses
  %i.gg = uitofp i32 %.02330.i to float
  %i.gh = fmul float %i.fy, %i.gg                 ; 2 uses
  br i1 %min.iters.check121, label %scalar.ph120.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %.preheader.i
  %i.gi = getelementptr i8, ptr %.02429.i, i64 %i.gf ; 2 uses
  %broadcast.splatinsert125 = insertelement <4 x float> poison, float %i.gh, i64 0
  %broadcast.splat126 = shufflevector <4 x float> %broadcast.splatinsert125, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph122
  %index130 = phi i64 [ 0, %vector.ph122 ], [ %index.next134, %vector.body129 ] ; 2 uses
  %vec.ind131 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph122 ], [ %vec.ind.next135, %vector.body129 ] ; 2 uses
  %i.gj = mul i64 %index130, 12
  %next.gep132 = getelementptr i8, ptr %.02429.i, i64 %i.gj
  %i.gk = uitofp <4 x i32> %vec.ind131 to <4 x float>
  %i.gl = fmul <4 x float> %broadcast.splat128, %i.gk
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> %broadcast.splat126, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec133 = shufflevector <8 x float> %i.gm, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec133, ptr %next.gep132, align 4
  %index.next134 = add nuw i64 %index130, 4       ; 2 uses
  %vec.ind.next135 = add nuw <4 x i32> %vec.ind131, splat (i32 4)
  %i.gn = icmp eq i64 %index.next134, %n.vec124
  br i1 %i.gn, label %middle.block136, label %vector.body129, !llvm.loop !27

middle.block136:                                  ; preds = %vector.body129
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph120.preheader

scalar.ph120.preheader:                           ; preds = %.preheader.i, %middle.block136
  %.028.i.ph = phi i32 [ 0, %.preheader.i ], [ %i.ge, %middle.block136 ]
  %.127.i.ph = phi ptr [ %.02429.i, %.preheader.i ], [ %i.gi, %middle.block136 ]
  %i.go = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gh, i64 0
  br label %scalar.ph120

._crit_edge.i:                                    ; preds = %scalar.ph120, %middle.block136
  %.lcssa = phi ptr [ %i.gi, %middle.block136 ], [ %i.gt, %scalar.ph120 ]
  %4 = add nuw i32 %.02330.i, 1                   ; 2 uses
  %exitcond31.not.i = icmp eq i32 %4, %i.at
  br i1 %exitcond31.not.i, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %.preheader.i, !llvm.loop !11

scalar.ph120:                                     ; preds = %scalar.ph120.preheader, %scalar.ph120
  %.028.i = phi i32 [ %i.gs, %scalar.ph120 ], [ %.028.i.ph, %scalar.ph120.preheader ] ; 2 uses
  %.127.i = phi ptr [ %i.gt, %scalar.ph120 ], [ %.127.i.ph, %scalar.ph120.preheader ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.127.i, i64 4
  %i.gq = uitofp i32 %.028.i to float
  %i.gr = fmul float %i.gc, %i.gq
  store float %i.gr, ptr %.127.i, align 4
  store <2 x float> %i.go, ptr %i.gp, align 4
  %i.gs = add nuw i32 %.028.i, 1                  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.127.i, i64 12 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gs, %i.au
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph120, !llvm.loop !28

_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit: ; preds = %._crit_edge.i, %bb.b, %._crit_edge66.split
  tail call void @_ZN6Assimp11HMPImporter20CreateOutputFaceListEjj(ptr noundef nonnull align 8 dereferenceable(159) %0, i32 noundef %i.au, i32 noundef %i.at)
  %i.gu = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #21 ; 3 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.gu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit
  %i.gv = load ptr, ptr %i.e, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr %i.gu, ptr %i.gw, align 8
  %i.gx = load ptr, ptr %i.e, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8            ; 3 uses
  store i32 12, ptr %i.gz, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ha, ptr noundef nonnull align 1 dereferenceable(12) @.str.23, i64 12, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i8 0, ptr %i.hb, align 4
  %.pre = load ptr, ptr %i.e, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1120
  store i32 1, ptr %i.he, align 8
  %i.hf = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #21
  %i.hg = load ptr, ptr %i.e, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1128
  store ptr %i.hf, ptr %i.hj, align 8
  %i.hk = load ptr, ptr %i.e, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 1128
  %i.ho = load ptr, ptr %i.hn, align 8
  store i32 0, ptr %i.ho, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.c:                                             ; preds = %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit
  %i.hp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef 1144) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  resume { ptr, i32 } %i.hp
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = icmp ne ptr %1, null
  %i.d = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.e = zext nneg i32 %2 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.f, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.e, ptr %i.b, align 8
  %i.g = icmp samesign ugt i32 %2, 15
  br i1 %i.g, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %4, align 8
  %i.i = load i64, ptr %i.b, align 8
  store i64 %i.i, ptr %i.f, align 8
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.b
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1
  store i8 %i.j, ptr %i.f, align 8
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.k = phi ptr [ %i.h, %._crit_edge.i.i.thread ], [ %i.f, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i64, ptr %i.b, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !alias.scope !29
  %i.q = load ptr, ptr %4, align 8, !noalias !29  ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !noalias !29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !29
  store i64 %i.r, ptr %i.a, align 8, !noalias !29
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc26 unwind label %bb.h   ; 2 uses

.noexc26:                                         ; preds = %.noexc.i.i
  store ptr %i.t, ptr %0, align 8, !alias.scope !29
  %i.u = load i64, ptr %i.a, align 8, !noalias !29
  store i64 %i.u, ptr %i.p, align 8, !alias.scope !29
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc26, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc26 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.q, align 1
  store i8 %i.w, ptr %i.v, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !noalias !29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !alias.scope !29
  %i.z = load ptr, ptr %0, align 8, !alias.scope !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !29
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !29 ; 2 uses
  %i.ac = load i64, ptr %i.y, align 8, !alias.scope !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %.not7.i.i = icmp samesign eq i64 %i.ac, 0
  br i1 %.not7.i.i, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %.lr.ph.i.i
  %.sroa.04.09.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 3 uses
  %i.ae = load i8, ptr %.sroa.04.09.i.i, align 1  ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = call i32 @isprint(i32 noundef %i.af) #22
  %.not.i.i.i = icmp eq i32 %i.ag, 0
  %i.ah = select i1 %.not.i.i.i, i8 %3, i8 %i.ae
  store i8 %i.ah, ptr %.sroa.04.09.i.i, align 1
  %i.ai = getelementptr i8, ptr %.sroa.04.09.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.i.i, label %.critedge, label %.lr.ph.i.i, !llvm.loop !32

_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit: ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aj, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  br label %.critedge24

.critedge:                                        ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.al = load ptr, ptr %4, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.f
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.an = load i64, ptr %i.f, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.critedge24

.critedge24:                                      ; preds = %_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %4, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.h
  %i.as = load i64, ptr %i.f, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.ap
}
end_hunk_0
begin_hunk_1_@_ZN6Assimp11HMPImporter21ValidateHeader_HMP457Ev:bb.a

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull @.str.20)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.ak = load i32, ptr %i.aj, align 1
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.al = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull @.str.21)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  ret void

bb.ab:                                            ; preds = %bb.z, %bb.v, %bb.q, %bb.m, %bb.i, %bb.d
  %.sink = phi ptr [ %i.al, %bb.z ], [ %i.ah, %bb.v ], [ %i.z, %bb.q ], [ %i.t, %bb.m ], [ %i.p, %bb.i ], [ %i.f, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.am, %bb.z ], [ %i.ai, %bb.v ], [ %i.aa, %bb.q ], [ %i.u, %bb.m ], [ %i.q, %bb.i ], [ %i.g, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11HMPImporter14CreateMaterialEPKhPS2_(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.aiColor3D, align 8          ; 8 uses
  %4 = alloca %struct.aiString, align 4           ; 7 uses
  store ptr %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %i.m = load i32, ptr %i.l, align 1
  %.fr = freeze i32 %i.m                          ; 2 uses
  %i.n = sext i32 %.fr to i64
  %i.o = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.n, i64 12) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  %i.q = extractvalue { i64, i1 } %i.o, 0         ; 2 uses
  %i.r = select i1 %i.p, i64 -1, i64 %i.q
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #21 ; 2 uses
  %i.t = icmp eq i32 %.fr, 0
  br i1 %i.t, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  %i.u = add nsw i64 %i.q, -12                    ; 2 uses
  %i.v = urem i64 %i.u, 12
  %i.w = sub nuw nsw i64 %i.u, %i.v
  %i.x = add nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 0, i64 %i.x, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr %i.s, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  store i32 2, ptr %i.z, align 8
  %i.aa = load i32, ptr %i.j, align 1
  call void @_ZN6Assimp11HMPImporter13ReadFirstSkinEjPKhPS2_(ptr noundef nonnull align 8 dereferenceable(159) %0, i32 noundef %i.aa, ptr noundef %1, ptr noundef nonnull %i.a)
  %i.ab = load ptr, ptr %i.a, align 8
  store ptr %i.ab, ptr %2, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 2, ptr %i.b, align 4
  %i.ac = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 8 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c
  %i.ad = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <2 x float> splat (float 6.000000e-01), ptr %3, align 8
  store float 6.000000e-01, ptr %i.ae, align 8
  %i.af = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull %3, i32 noundef 12, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ag = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull %3, i32 noundef 12, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  store <2 x float> splat (float 5.000000e-02), ptr %3, align 8
  store float 5.000000e-02, ptr %i.ae, align 8
  %i.ah = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull %3, i32 noundef 12, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1008) %i.ai, i8 0, i64 1008, i1 false)
  store i32 15, ptr %4, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.aj, ptr noundef nonnull align 1 dereferenceable(15) @.str.28, i64 15, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 0, ptr %i.ak, align 1
  %i.al = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull %4, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.am = load ptr, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i32 1, ptr %i.an, align 8
  %i.ao = call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #21
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.c, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  store ptr %i.ac, ptr %i.at, align 8
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.loopexit
  ret void

bb.e:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  resume { ptr, i32 } %i.au
}

declare void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159), ptr noundef) local_unnamed_addr #1

declare void @_ZN6Assimp3MD217LookupNormalIndexEhR10aiVector3tIfE(i8 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(159) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %2, 0
  %i.j = icmp eq i32 %1, 0
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %.loopexit.split, label %.split

.split:                                           ; preds = %bb.b
  %i.k = uitofp i32 %2 to float                   ; 2 uses
  %i.l = fdiv float 1.000000e+00, %i.k            ; 2 uses
  %i.m = fdiv float %i.l, %i.k
  %i.n = fadd float %i.l, %i.m
  %i.o = uitofp i32 %1 to float                   ; 2 uses
  %i.p = fdiv float 1.000000e+00, %i.o            ; 2 uses
  %i.q = fdiv float %i.p, %i.o
  %i.r = fadd float %i.p, %i.q                    ; 2 uses
  %i.s = zext i32 %1 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %i.s, 4294967292               ; 4 uses
  %i.t = trunc nuw i64 %n.vec to i32
  %i.u = mul nuw nsw i64 %n.vec, 12
  %broadcast.splatinsert35 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat36 = shufflevector <4 x float> %broadcast.splatinsert35, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.s
  br label %.preheader

.preheader:                                       ; preds = %.split, %._crit_edge
  %.02330 = phi i32 [ 0, %.split ], [ %3, %._crit_edge ] ; 2 uses
  %.02429 = phi ptr [ %i.g, %.split ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %i.v = uitofp i32 %.02330 to float
  %i.w = fmul float %i.n, %i.v                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.x = getelementptr i8, ptr %.02429, i64 %i.u  ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.y = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %.02429, i64 %i.y
  %i.z = uitofp <4 x i32> %vec.ind to <4 x float>
  %i.aa = fmul <4 x float> %broadcast.splat36, %i.z
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> %broadcast.splat, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ab, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.028.ph = phi i32 [ 0, %.preheader ], [ %i.t, %middle.block ]
  %.127.ph = phi ptr [ %.02429, %.preheader ], [ %i.x, %middle.block ]
  %i.ad = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.w, i64 0
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.x, %middle.block ], [ %i.ai, %scalar.ph ]
  %3 = add nuw i32 %.02330, 1                     ; 2 uses
  %exitcond31.not = icmp eq i32 %3, %2
  br i1 %exitcond31.not, label %.loopexit.split, label %.preheader, !llvm.loop !11

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.028 = phi i32 [ %i.ah, %scalar.ph ], [ %.028.ph, %scalar.ph.preheader ] ; 2 uses
  %.127 = phi ptr [ %i.ai, %scalar.ph ], [ %.127.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.127, i64 4
  %i.af = uitofp i32 %.028 to float
  %i.ag = fmul float %i.r, %i.af
  store float %i.ag, ptr %.127, align 4
  store <2 x float> %i.ad, ptr %i.ae, align 4
  %i.ah = add nuw i32 %.028, 1                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.127, i64 12 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %1
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !34

.loopexit.split:                                  ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11HMPImporter20CreateOutputFaceListEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(159) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8              ; 9 uses
  %i.f = add i32 %1, -1                           ; 3 uses
  %i.g = add i32 %2, -1                           ; 3 uses
  %i.h = mul i32 %i.g, %i.f                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.h, ptr %i.i, align 8
  %i.j = zext i32 %i.h to i64                     ; 5 uses
  %i.k = shl nuw nsw i64 %i.j, 4
  %i.l = or disjoint i64 %i.k, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #21 ; 2 uses
  store i64 %i.j, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %.loopexit133, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.j
  %i.q = add nuw nsw i64 %i.j, 1152921504606846975
  %i.r = and i64 %i.q, 1152921504606846975
  %xtraiter = and i64 %i.j, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.b, %.prol.preheader
  %i.s = phi ptr [ %i.u, %.prol.preheader ], [ %i.n, %bb.b ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.b ]
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !35

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.b
  %.unr = phi ptr [ %i.n, %bb.b ], [ %i.u, %.prol.preheader ]
  %i.v = icmp samesign ult i64 %i.r, 7
  br i1 %i.v, label %.loopexit133, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.w = phi ptr [ %i.am, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr null, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i32 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store i32 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  store ptr null, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 128 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.p
  br i1 %i.an, label %.loopexit133, label %.new

.loopexit133:                                     ; preds = %.prol.loopexit, %.new, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store ptr %i.n, ptr %i.ao, align 8
  %i.ap = shl i32 %i.h, 2                         ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = zext i32 %i.ap to i64                   ; 3 uses
  %i.as = mul nuw nsw i64 %i.ar, 12               ; 8 uses
  %i.at = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #21 ; 3 uses
  %i.au = icmp eq i32 %i.ap, 0
  br i1 %i.au, label %.loopexit131, label %.loopexit131.thread

.loopexit131:                                     ; preds = %.loopexit133
  %i.av = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #21 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %.loopexit130, label %bb.c

.loopexit131.thread:                              ; preds = %.loopexit133
  %i.ay = add nsw i64 %i.as, -12                  ; 2 uses
  %i.az = urem i64 %i.ay, 12
  %i.ba = sub nuw nsw i64 %i.ay, %i.az
  %i.bb = add nsw i64 %i.ba, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.at, i8 0, i64 %i.bb, i1 false)
  %i.bc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #21 ; 3 uses
  %i.bd = add nsw i64 %i.as, -12                  ; 2 uses
  %i.be = urem i64 %i.bd, 12
  %i.bf = sub nuw nsw i64 %i.bd, %i.be
  %i.bg = add nsw i64 %i.bf, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bc, i8 0, i64 %i.bg, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %.not171 = icmp eq ptr %i.bi, null
  br i1 %.not171, label %.loopexit130, label %.loopexit130.loopexit

bb.c:                                             ; preds = %.loopexit131
  %i.bj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #21
  br label %.loopexit130

.loopexit130.loopexit:                            ; preds = %.loopexit131.thread
  %i.bk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #21 ; 2 uses
  %i.bl = add nsw i64 %i.as, -12                  ; 2 uses
  %i.bm = urem i64 %i.bl, 12
  %i.bn = sub nuw nsw i64 %i.bl, %i.bm
  %i.bo = add nsw i64 %i.bn, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bk, i8 0, i64 %i.bo, i1 false)
  br label %.loopexit130

.loopexit130:                                     ; preds = %bb.c, %.loopexit131.thread, %.loopexit130.loopexit, %.loopexit131
  %i.bp = phi ptr [ %i.aw, %bb.c ], [ %i.aw, %.loopexit131 ], [ %i.bh, %.loopexit130.loopexit ], [ %i.bh, %.loopexit131.thread ] ; 6 uses
  %i.bq = phi ptr [ %i.av, %bb.c ], [ %i.av, %.loopexit131 ], [ %i.bc, %.loopexit130.loopexit ], [ %i.bc, %.loopexit131.thread ] ; 2 uses
  %i.br = phi ptr [ %i.bj, %bb.c ], [ null, %.loopexit131 ], [ %i.bk, %.loopexit130.loopexit ], [ null, %.loopexit131.thread ] ; 2 uses
  %.not153 = icmp eq i32 %i.g, 0
  br i1 %.not153, label %._crit_edge.split, label %.lr.ph152

.lr.ph152:                                        ; preds = %.loopexit130
  %.not154 = icmp eq i32 %i.f, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  br i1 %.not154, label %._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph152
  %wide.trip.count161 = zext i32 %i.g to i64
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

..loopexit129_crit_edge:                          ; preds = %.loopexit
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %._crit_edge.split, label %.lr.ph, !llvm.loop !37

._crit_edge.split:                                ; preds = %..loopexit129_crit_edge, %.lr.ph152, %.loopexit130
  %3 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %4 = load ptr, ptr %3, align 8                  ; 2 uses
  %5 = icmp eq ptr %4, null
  br i1 %5, label %bb.i, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit129_crit_edge
  %indvars.iv158 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next159, %..loopexit129_crit_edge ] ; 2 uses
  %.0100151 = phi ptr [ %i.n, %.lr.ph.preheader ], [ %i.eb, %..loopexit129_crit_edge ]
  %.0101150 = phi ptr [ %i.at, %.lr.ph.preheader ], [ %.2, %..loopexit129_crit_edge ]
  %.0104148 = phi i32 [ 0, %.lr.ph.preheader ], [ %.3, %..loopexit129_crit_edge ]
  %.0107147 = phi ptr [ %i.bq, %.lr.ph.preheader ], [ %.2109, %..loopexit129_crit_edge ]
  %.0110146 = phi ptr [ %i.br, %.lr.ph.preheader ], [ %.3113, %..loopexit129_crit_edge ]
  %i.bu = trunc nuw i64 %indvars.iv158 to i32
  %i.bv = mul i32 %1, %i.bu
  %i.bw = zext i32 %i.bv to i64
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 3 uses
  %i.bx = trunc nuw i64 %indvars.iv.next159 to i32
  %i.by = mul i32 %1, %i.bx
  %i.bz = zext i32 %i.by to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.1140 = phi ptr [ %.0100151, %.lr.ph ], [ %i.eb, %.loopexit ] ; 3 uses
  %.1102139 = phi ptr [ %.0101150, %.lr.ph ], [ %.2, %.loopexit ] ; 7 uses
  %.1105138 = phi i32 [ %.0104148, %.lr.ph ], [ %.3, %.loopexit ] ; 7 uses
  %.1108137 = phi ptr [ %.0107147, %.lr.ph ], [ %.2109, %.loopexit ] ; 7 uses
  %.1111136 = phi ptr [ %.0110146, %.lr.ph ], [ %.3113, %.loopexit ] ; 8 uses
  store i32 4, ptr %.1140, align 8
  %i.ca = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #21
  %i.cb = getelementptr inbounds nuw i8, ptr %.1140, i64 8 ; 5 uses
  store ptr %i.ca, ptr %i.cb, align 8
  %i.cc = add nuw nsw i64 %indvars.iv, %i.bw      ; 4 uses
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 4 uses
  %.not126 = icmp samesign ult i64 %i.cd, %i.ar
  br i1 %.not126, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ce = add nuw nsw i64 %indvars.iv, %i.bz      ; 4 uses
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 4 uses
  %.not127 = icmp samesign ult i64 %i.cf, %i.ar
  br i1 %.not127, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.cg = load ptr, ptr %i.bs, align 8
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %i.cc
  %i.ci = getelementptr inbounds nuw i8, ptr %.1102139, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1102139, ptr noundef nonnull align 4 dereferenceable(12) %i.ch, i64 12, i1 false)
  %i.cj = load ptr, ptr %i.bs, align 8
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.ce
  %i.cl = getelementptr inbounds nuw i8, ptr %.1102139, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ci, ptr noundef nonnull align 4 dereferenceable(12) %i.ck, i64 12, i1 false)
  %i.cm = load ptr, ptr %i.bs, align 8
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %i.cf
  %i.co = getelementptr inbounds nuw i8, ptr %.1102139, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cl, ptr noundef nonnull align 4 dereferenceable(12) %i.cn, i64 12, i1 false)
  %i.cp = load ptr, ptr %i.bs, align 8
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr %i.cp, i64 %i.cd
  %i.cr = getelementptr inbounds nuw i8, ptr %.1102139, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.co, ptr noundef nonnull align 4 dereferenceable(12) %i.cq, i64 12, i1 false)
  %i.cs = load ptr, ptr %i.bt, align 8
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.cs, i64 %i.cc
  %i.cu = getelementptr inbounds nuw i8, ptr %.1108137, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1108137, ptr noundef nonnull align 4 dereferenceable(12) %i.ct, i64 12, i1 false)
  %i.cv = load ptr, ptr %i.bt, align 8
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %i.ce
  %i.cx = getelementptr inbounds nuw i8, ptr %.1108137, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cu, ptr noundef nonnull align 4 dereferenceable(12) %i.cw, i64 12, i1 false)
  %i.cy = load ptr, ptr %i.bt, align 8
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %i.cf
  %i.da = getelementptr inbounds nuw i8, ptr %.1108137, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cx, ptr noundef nonnull align 4 dereferenceable(12) %i.cz, i64 12, i1 false)
  %i.db = load ptr, ptr %i.bt, align 8
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %i.db, i64 %i.cd
  %i.dd = getelementptr inbounds nuw i8, ptr %.1108137, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.da, ptr noundef nonnull align 4 dereferenceable(12) %i.dc, i64 12, i1 false)
  %i.de = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not128 = icmp eq ptr %i.de, null
  br i1 %.not128, label %.loopexit.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %i.cc
  %i.dg = getelementptr inbounds nuw i8, ptr %.1111136, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.1111136, ptr noundef nonnull align 4 dereferenceable(12) %i.df, i64 12, i1 false)
  %i.dh = load ptr, ptr %i.bp, align 8
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.dh, i64 %i.ce
  %i.dj = getelementptr inbounds nuw i8, ptr %.1111136, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dg, ptr noundef nonnull align 4 dereferenceable(12) %i.di, i64 12, i1 false)
  %i.dk = load ptr, ptr %i.bp, align 8
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %i.dk, i64 %i.cf
  %i.dm = getelementptr inbounds nuw i8, ptr %.1111136, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dj, ptr noundef nonnull align 4 dereferenceable(12) %i.dl, i64 12, i1 false)
  %i.dn = load ptr, ptr %i.bp, align 8
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %i.cd
  %i.dp = getelementptr inbounds nuw i8, ptr %.1111136, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dm, ptr noundef nonnull align 4 dereferenceable(12) %i.do, i64 12, i1 false)
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.g, %bb.f
  %.2112 = phi ptr [ %i.dp, %bb.g ], [ %.1111136, %bb.f ]
  %i.dq = add i32 %.1105138, 1
  %i.dr = load ptr, ptr %i.cb, align 8
  store i32 %.1105138, ptr %i.dr, align 4
  %i.ds = add i32 %.1105138, 2
  %i.dt = load ptr, ptr %i.cb, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 %i.dq, ptr %i.du, align 4
  %i.dv = add i32 %.1105138, 3
  %i.dw = load ptr, ptr %i.cb, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i32 %i.ds, ptr %i.dx, align 4
  %i.dy = add i32 %.1105138, 4
  %i.dz = load ptr, ptr %i.cb, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 %i.dv, ptr %i.ea, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e, %bb.d
  %.3113 = phi ptr [ %.1111136, %bb.d ], [ %.1111136, %bb.e ], [ %.2112, %.loopexit.loopexit ] ; 2 uses
  %.2109 = phi ptr [ %.1108137, %bb.d ], [ %.1108137, %bb.e ], [ %i.dd, %.loopexit.loopexit ] ; 2 uses
  %.3 = phi i32 [ %.1105138, %bb.d ], [ %.1105138, %bb.e ], [ %i.dy, %.loopexit.loopexit ] ; 2 uses
  %.2 = phi ptr [ %.1102139, %bb.d ], [ %.1102139, %bb.e ], [ %i.cr, %.loopexit.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1140, i64 16 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit129_crit_edge, label %bb.d, !llvm.loop !38

bb.h:                                             ; preds = %._crit_edge.split
  tail call void @_ZdaPv(ptr noundef nonnull %4) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.split
  store ptr %i.at, ptr %3, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ed) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %i.bq, ptr %i.ec, align 8
  %i.ef = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not125 = icmp eq ptr %i.ef, null
  br i1 %.not125, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.ef) #18
  store ptr %i.br, ptr %i.bp, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11HMPImporter13ReadFirstSkinEjPKhPS2_(ptr noundef nonnull align 8 dereferenceable(159) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %4 = alloca %"class.std::unique_ptr.14", align 8 ; 6 uses
  %i.b = load i32, ptr %2, align 4                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.30)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #19
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.g, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %.018 = phi i32 [ %i.f, %bb.b ], [ %i.b, %bb.a ]
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.o = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.o, ptr %4, align 8
  invoke void @_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, i32 noundef %.018, i32 noundef %i.k, i32 noundef %i.m)
          to label %.preheader unwind label %bb.i

.preheader:                                       ; preds = %bb.g
  %i.p = icmp ugt i32 %1, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i32 1, ptr %i.s, align 8
  %i.t = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #21
          to label %_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 16) #18
  br label %bb.o

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %.024 = phi i32 [ %i.ag, %bb.l ], [ 1, %.preheader ]
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  invoke void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.x)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  store ptr %i.ae, ptr %i.a, align 8
  invoke void @_ZN6Assimp11MDLImporter22SkipSkinLump_3DGS_MDL7EPKhPS2_jjj(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ad)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.a, align 8
  invoke void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %i.af)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = add nuw i32 %.024, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

bb.m:                                             ; preds = %bb.k, %bb.j, %.lr.ph
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev.exit: ; preds = %._crit_edge
  %i.ai = load ptr, ptr %i.q, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %i.t, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %4, align 8
  %i.al = load ptr, ptr %i.q, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  store ptr %i.ak, ptr %i.an, align 8
  %i.ao = load ptr, ptr %i.a, align 8
  store ptr %i.ao, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.n:                                             ; preds = %bb.m, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.v, %bb.i ]
  call void @_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.u, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

declare void @_ZN6Assimp11MDLImporter23ParseSkinLump_3DGS_MDL7EPKhPS2_P10aiMaterialjjj(ptr noundef nonnull align 8 dereferenceable(159), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6Assimp11MDLImporter22SkipSkinLump_3DGS_MDL7EPKhPS2_jjj(ptr noundef nonnull align 8 dereferenceable(159), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI10aiMaterialSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI10aiMaterialEclEPS0_.exit

_ZNKSt14default_deleteI10aiMaterialEclEPS0_.exit: ; preds = %bb.a
  tail call void @_ZN10aiMaterialD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #18
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI10aiMaterialEclEPS0_.exit, %bb.a
  ret void
}

declare void @_ZN6Assimp11MDLImporter15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull align 8 dereferenceable(159), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
end_hunk_1
begin_hunk_2_@_ZN15DeadlyErrorBaseC2IJRA15_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_ERKS9_EEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcESA_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(15) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(15) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(15) %2) #19
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(15) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA15_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(15) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #19
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #19
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA15_KcERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(15) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA15_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(15) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #19
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #19
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA15_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(15) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(15) %2) #19
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(15) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #19
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #19
  resume { ptr, i32 } %i.q
}

; Function Attrs: nounwind
declare void @_ZN10aiMaterialD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{null}
!4 = distinct !{null, null}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6, !10, !9}
!13 = !{!14}
!14 = distinct !{!14, !15}
!15 = distinct !{!15, !"LVerDomain"}
!16 = !{!17}
!17 = distinct !{!17, !15}
!18 = !{!19}
!19 = distinct !{!19, !15}
!20 = !{!21, !14, !17}
!21 = distinct !{!21, !15}
!22 = !{!21}
!23 = !{!14, !17}
!24 = distinct !{!24, !6, !9, !10}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6, !9}
!27 = distinct !{!27, !6, !9, !10}
!28 = distinct !{!28, !6, !10, !9}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc: argument 0"}
!31 = distinct !{!31, !"_Z18ai_str_toprintableRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc"}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6, !9, !10}
!34 = distinct !{!34, !6, !10, !9}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!42 = distinct !{!42, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!45 = distinct !{!45, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!48 = distinct !{!48, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!49 = !{!47, !44, !41}
end_hunk_2
