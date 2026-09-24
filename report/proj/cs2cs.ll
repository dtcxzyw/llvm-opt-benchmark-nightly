Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/cs2cs?download=true
inline.NumInlined: 505
inline.NumDeleted: 252
begin_hunk_0_@_ZL7is3DCRSPK8PJconsts:bb.a
bb.c:                                             ; preds = %bb.a, %bb.a, %.fold.split, %bb.b
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ %i.d, %bb.b ], [ false, %.fold.split ]
  ret i1 %.0
}

declare ptr @proj_get_id_code(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5osgeo4proj8metadata10Identifier16isEquivalentNameEPKcS4_(ptr noundef, ptr noundef) local_unnamed_addr #16

declare ptr @proj_get_name(ptr noundef) local_unnamed_addr #2

declare ptr @proj_coordinate_metadata_create(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !22
  store ptr %i.e, ptr %i.b, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !146
  br label %_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !64     ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #32
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #35 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !22
  store ptr %i.t, ptr %i.s, align 8, !tbaa !22
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #33
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !64
  store ptr %i.v, ptr %i.a, align 8, !tbaa !146
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !69
  br label %_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

declare void @_ZN5osgeo4proj8internal8toStringB5cxx11Edi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

declare ptr @proj_create_crs_to_crs_from_pj(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @proj_area_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @proj_errno_string(i32 noundef) local_unnamed_addr #2

declare i32 @proj_context_errno(ptr noundef) local_unnamed_addr #2

declare noundef double @_Z6dmstorPKcPPc(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) #19

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL7processP8_IO_FILE(ptr nofree noundef captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = alloca [1003 x i8], align 16             ; 6 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %i.c = alloca [40 x i8], align 16               ; 10 uses
  %1 = alloca %union.PJ_COORD, align 8            ; 6 uses
  %2 = alloca %union.PJ_COORD, align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !68
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !68
  %i.f = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef %0) ; 3 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !22
  %.not5661 = icmp eq ptr %i.f, null
  br i1 %.not5661, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.al
  %i.g = phi ptr [ %i.f, %.lr.ph ], [ %i.ee, %bb.al ] ; 8 uses
  %i.h = phi i1 [ true, %.lr.ph ], [ false, %bb.al ]
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.g, align 1, !tbaa !21
  %i.j = icmp eq i8 %i.i, -17
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !21
  %i.m = icmp eq i8 %i.l, -69
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !21
  %i.p = icmp eq i8 %i.o, -65
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 2 uses
  store ptr %i.q, ptr %i.b, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  %i.s = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 10) #29
  %.not57 = icmp eq ptr %i.s, null
  br i1 %.not57, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.r)
  %endptr = getelementptr inbounds i8, ptr %i.r, i64 %strlen
  store i16 10, ptr %endptr, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %i.t = call i32 @fgetc(ptr noundef %0)
  switch i32 %i.t, label %bb.i [
    i32 -1, label %.loopexit.loopexit
    i32 10, label %.loopexit.loopexit
  ]

.loopexit.loopexit:                               ; preds = %bb.i, %bb.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g
  %i.u = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.r, %bb.g ] ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !21
  %i.w = sext i8 %i.v to i32
  %i.x = load i32, ptr @_ZL3tag, align 4, !tbaa !43
  %i.y = icmp eq i32 %i.x, %i.w
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.aa = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.z) ; 0 uses
  br label %bb.al, !llvm.loop !147

bb.k:                                             ; preds = %.loopexit
  %.b52 = load i1, ptr @_ZL9reversein, align 4    ; 2 uses
  %i.ab = load ptr, ptr @_ZL8informat, align 8, !tbaa !36
  %i.ac = call noundef double %i.ab(ptr noundef nonnull %i.u, ptr noundef nonnull %i.b), !callees !148 ; 2 uses
  %i.ad = load ptr, ptr @_ZL8informat, align 8, !tbaa !36
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.af = call noundef double %i.ad(ptr noundef %i.ae, ptr noundef nonnull %i.b), !callees !148 ; 2 uses
  %. = select i1 %.b52, double %i.af, double %i.ac
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.ah = call double @strtod(ptr noundef %i.ag, ptr noundef nonnull %i.b) #27 ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !22  ; 7 uses
  %i.aj = call double @strtod(ptr noundef %i.ai, ptr noundef nonnull %i.b) #27
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.al = icmp eq ptr %i.ak, %i.ai
  %spec.store.select = select i1 %i.al, double +inf, double %i.aj
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !22
  %.72 = select i1 %.b52, double %i.ac, double %i.af ; 2 uses
  %i.am = fcmp oeq double %.72, +inf
  %.sroa.022.1 = select i1 %i.am, double +inf, double %. ; 2 uses
  %i.an = load i8, ptr %i.ai, align 1, !tbaa !21
  %i.ao = icmp eq i8 %i.an, 0
  %i.ap = icmp ugt ptr %i.ai, %i.a
  %or.cond = and i1 %i.ap, %i.ao
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 -1 ; 2 uses
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = phi ptr [ %i.aq, %bb.l ], [ %i.ai, %bb.k ] ; 2 uses
  %.b = load i1, ptr @_ZL6echoin, align 4
  br i1 %.b, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  store i8 0, ptr %i.ar, align 1, !tbaa !21
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.au = call i32 @fputs(ptr noundef nonnull %i.r, ptr noundef %i.at) ; 0 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !22
  store i8 %i.as, ptr %i.av, align 1, !tbaa !21
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.ax = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.aw), !inline_history !1 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ay = fcmp une double %.sroa.022.1, +inf
  br i1 %i.ay, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.az = load i8, ptr @_ZL12srcIsLongLat, align 1, !tbaa !62, !range !60, !noundef !61
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = insertelement <2 x double> poison, double %.sroa.022.1, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %.72, i64 1 ; 3 uses
  br i1 %i.ba, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bd = load double, ptr @_ZL12srcToRadians, align 8, !tbaa !67 ; 2 uses
  %i.be = fadd double %i.bd, f0xBF91DF46A2529D39
  %i.bf = call double @llvm.fabs.f64(double %i.be)
  %i.bg = fcmp olt double %i.bf, 1.000000e-10
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bh = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = fdiv <2 x double> %i.bc, %i.bi
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.bk = phi <2 x double> [ %i.bj, %bb.r ], [ %i.bc, %bb.q ], [ %i.bc, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.bl = load ptr, ptr @_ZL14transformation, align 8, !tbaa !66
  store <2 x double> %i.bk, ptr %2, align 16
  store double %i.ah, ptr %.sroa.8.0..sroa_idx, align 16
  store double %spec.store.select, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !21
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %1, ptr noundef %i.bl, i32 noundef 1, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %2)
  %.sroa.0.0.copyload5 = load double, ptr %1, align 8 ; 4 uses
  %.sroa.6.0.copyload7 = load double, ptr %.sroa.6.0..sroa_idx6, align 8 ; 3 uses
  %.sroa.8.0.copyload9 = load double, ptr %.sroa.8.0..sroa_idx8, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.bm = fcmp oeq double %.sroa.0.0.copyload5, +inf
  br i1 %i.bm, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.o, %bb.s
  %.04671 = phi double [ %.sroa.8.0.copyload9, %bb.s ], [ %i.ah, %bb.o ]
  %i.bn = load ptr, ptr @_ZL5oterr, align 8, !tbaa !22
  %i.bo = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.bp = call i32 @fputs(ptr noundef %i.bn, ptr noundef %i.bo) ; 0 uses
  br label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.bq = load i8, ptr @_ZL13destIsLongLat, align 1, !tbaa !62, !range !60, !noundef !61
  %i.br = trunc nuw i8 %i.bq to i1                ; 3 uses
  %i.bs = load ptr, ptr @_ZL5oform, align 8       ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  %or.cond4.not = select i1 %i.br, i1 %i.bt, i1 false
  %i.bu = load double, ptr @_ZL13destToRadians, align 8 ; 3 uses
  br i1 %or.cond4.not, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.bv = fmul double %.sroa.0.0.copyload5, %i.bu ; 4 uses
  %i.bw = fmul double %.sroa.6.0.copyload7, %i.bu ; 4 uses
  %i.bx = load i8, ptr @_ZL13destIsLatLong, align 1, !tbaa !62, !range !60, !noundef !61
  %i.by = trunc nuw i8 %i.bx to i1
  %.b55 = load i1, ptr @_ZL10reverseout, align 4  ; 2 uses
  br i1 %i.by, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %.b55, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bw, i32 noundef 69, i32 noundef 87)
  %i.ca = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.cb = call i32 @fputs(ptr noundef %i.bz, ptr noundef %i.ca) ; 0 uses
  %i.cc = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.cd = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.cc), !inline_history !1 ; 0 uses
  %i.ce = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bv, i32 noundef 78, i32 noundef 83)
  %i.cf = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.cg = call i32 @fputs(ptr noundef %i.ce, ptr noundef %i.cf) ; 0 uses
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.ch = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bv, i32 noundef 78, i32 noundef 83)
  %i.ci = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.cj = call i32 @fputs(ptr noundef %i.ch, ptr noundef %i.ci) ; 0 uses
  %i.ck = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.cl = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.ck), !inline_history !1 ; 0 uses
  %i.cm = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bw, i32 noundef 69, i32 noundef 87)
  %i.cn = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.co = call i32 @fputs(ptr noundef %i.cm, ptr noundef %i.cn) ; 0 uses
  br label %bb.ae

bb.y:                                             ; preds = %bb.u
  br i1 %.b55, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cp = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bw, i32 noundef 78, i32 noundef 83)
  %i.cq = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.cr = call i32 @fputs(ptr noundef %i.cp, ptr noundef %i.cq) ; 0 uses
  %i.cs = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.ct = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.cs), !inline_history !1 ; 0 uses
  %i.cu = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bv, i32 noundef 69, i32 noundef 87)
  %i.cv = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.cw = call i32 @fputs(ptr noundef %i.cu, ptr noundef %i.cv) ; 0 uses
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.cx = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bv, i32 noundef 69, i32 noundef 87)
  %i.cy = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.cz = call i32 @fputs(ptr noundef %i.cx, ptr noundef %i.cy) ; 0 uses
  %i.da = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.db = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.da), !inline_history !1 ; 0 uses
  %i.dc = call noundef ptr @_Z6rtodmsPcmdii(ptr noundef nonnull %i.c, i64 noundef 40, double noundef %i.bw, i32 noundef 78, i32 noundef 83)
  %i.dd = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.de = call i32 @fputs(ptr noundef %i.dc, ptr noundef %i.dd) ; 0 uses
  br label %bb.ae

bb.ab:                                            ; preds = %bb.t
  %i.df = fmul double %i.bu, f0x404CA5DC1A63C1F8  ; 2 uses
  %i.dg = fmul double %.sroa.6.0.copyload7, %i.df
  %i.dh = fmul double %.sroa.0.0.copyload5, %i.df
  %.sroa.022.4 = select i1 %i.br, double %i.dh, double %.sroa.0.0.copyload5 ; 2 uses
  %.sroa.21.3 = select i1 %i.br, double %i.dg, double %.sroa.6.0.copyload7 ; 2 uses
  %.b53 = load i1, ptr @_ZL10reverseout, align 4
  %i.di = load ptr, ptr @stdout, align 8, !tbaa !25 ; 2 uses
  br i1 %.b53, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef %i.di, ptr noundef %i.bs, double noundef %.sroa.21.3)
  %i.dj = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.dk = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.dj), !inline_history !1 ; 0 uses
  %i.dl = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.dm = load ptr, ptr @_ZL5oform, align 8, !tbaa !22
  call void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef %i.dl, ptr noundef %i.dm, double noundef %.sroa.022.4)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef %i.di, ptr noundef %i.bs, double noundef %.sroa.022.4)
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.do = call noundef i32 @putc(i32 noundef 9, ptr noundef %i.dn), !inline_history !1 ; 0 uses
  %i.dp = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.dq = load ptr, ptr @_ZL5oform, align 8, !tbaa !22
  call void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef %i.dp, ptr noundef %i.dq, double noundef %.sroa.21.3)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.z, %bb.aa, %bb.w, %bb.x, %bb.ad, %bb.ac, %.thread
  %.04670 = phi double [ %.sroa.8.0.copyload9, %bb.z ], [ %.sroa.8.0.copyload9, %bb.aa ], [ %.sroa.8.0.copyload9, %bb.w ], [ %.sroa.8.0.copyload9, %bb.x ], [ %.sroa.8.0.copyload9, %bb.ad ], [ %.sroa.8.0.copyload9, %bb.ac ], [ %.04671, %.thread ] ; 2 uses
  %i.dr = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.ds = call noundef i32 @putc(i32 noundef 32, ptr noundef %i.dr), !inline_history !1 ; 0 uses
  %i.dt = load ptr, ptr @_ZL5oform, align 8, !tbaa !22 ; 2 uses
  %.not = icmp eq ptr %i.dt, null
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = load ptr, ptr @stdout, align 8, !tbaa !25
  call void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef %i.du, ptr noundef nonnull %i.dt, double noundef %.04670)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, double noundef %.04670) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dw = load ptr, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %.not59 = icmp eq ptr %i.dw, null
  br i1 %.not59, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, ptr noundef nonnull %i.dw) ; 0 uses
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dy = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.dz = call noundef i32 @putc(i32 noundef 10, ptr noundef %i.dy), !inline_history !1 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ea = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.eb = call i32 @fflush(ptr noundef %i.ea)     ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.j, %bb.ak
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !68
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr getelementptr inbounds nuw (i8, ptr @emess_dat, i64 16), align 8, !tbaa !68
  %i.ee = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1000, ptr noundef %0) ; 3 uses
  store ptr %i.ee, ptr %i.b, align 8, !tbaa !22
  %.not56 = icmp eq ptr %i.ee, null
  br i1 %.not56, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.al, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

declare void @proj_cleanup() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !149
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !43   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !149
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #21

declare i32 @proj_get_type(ptr noundef) local_unnamed_addr #2

declare ptr @proj_get_source_crs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_clone(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @proj_crs_get_coordinate_system(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @proj_cs_get_axis_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef i64 @_ZN5osgeo4proj8internal7ci_findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #16

declare i32 @proj_cs_get_axis_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare void @proj_trans(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8, ptr noundef, i32 noundef, ptr noundef byval(%union.PJ_COORD) align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_Z6rtodmsPcmdii(ptr noundef, i64 noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z26limited_fprintf_for_numberP8_IO_FILEPKcd(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #22

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #22

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #23

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !42
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !4
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE14_M_move_assignEOS9_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %.not8.i.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.b, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.b = load ptr, ptr %.09.i.i, align 8, !tbaa !52 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !21
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !21
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #33
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 80) #33
  %.not.i.i = icmp eq ptr %i.b, %0
  br i1 %.not.i.i, label %_ZNSt7__cxx114listISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt7__cxx114listISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i.i, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %0, ptr %i.o, align 8, !tbaa !150
  store ptr %0, ptr %0, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !151
  %i.q = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx114listISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit
  store ptr %0, ptr %0, align 8, !tbaa !52
  br label %_ZNSt7__cxx1110_List_baseISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_move_nodesEOS9_.exit

bb.c:                                             ; preds = %_ZNSt7__cxx114listISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE5clearEv.exit
  store ptr %i.q, ptr %0, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !150  ; 2 uses
  store ptr %i.t, ptr %i.o, align 8, !tbaa !150
  store ptr %0, ptr %i.t, align 8, !tbaa !52
  %i.u = load ptr, ptr %0, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %0, ptr %i.v, align 8, !tbaa !150
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !151
  store i64 %i.x, ptr %i.p, align 8, !tbaa !151
  store ptr %1, ptr %i.s, align 8, !tbaa !150
  store ptr %1, ptr %1, align 8, !tbaa !52
  store i64 0, ptr %i.w, align 8, !tbaa !151
  br label %_ZNSt7__cxx1110_List_baseISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_move_nodesEOS9_.exit

_ZNSt7__cxx1110_List_baseISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_move_nodesEOS9_.exit: ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #24

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress norecurse noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(none) }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nofree nounwind }
attributes #27 = { nounwind }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { cold nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin nounwind }
attributes #34 = { cold }
attributes #35 = { builtin allocsize(0) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !26}
!1 = distinct !{null}
!2 = distinct !{null, null, null}
!3 = distinct !{!3, !26}
!4 = distinct !{null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !10, i64 16}
!20 = !{!19, !18, i64 8}
!21 = !{!10, !10, i64 0}
!22 = !{!15, !15, i64 0}
!23 = !{!"_ZTS5EMESS", !15, i64 0, !15, i64 8, !11, i64 16}
!24 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!18, !18, i64 0}
!28 = !{!19, !15, i64 0}
!29 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!30, !29, i64 8}
!32 = !{!30, !29, i64 0}
!33 = !{!"vtable pointer", !9, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"bool", !10, i64 0}
!36 = !{!14, !14, i64 0}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!38 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!39 = !{!38, !37, i64 0}
!40 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 8, !11, i64 12}
!41 = !{!40, !11, i64 8}
!42 = !{!40, !11, i64 12}
!43 = !{!11, !11, i64 0}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{!30, !29, i64 16}
!46 = !{!"any p2 pointer", !14, i64 0}
!47 = !{!"p2 omnipotent char", !46, i64 0}
!48 = !{!"double", !10, i64 0}
!49 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !14, i64 0}
!50 = !{!"_ZTSNSt8__detail15_List_node_baseE", !49, i64 0, !49, i64 8}
!51 = !{!"_ZTSNSt8__detail17_List_node_headerE", !50, i64 0, !18, i64 16}
!52 = !{!50, !49, i64 0}
!53 = !{!"p1 _ZTSN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEE", !14, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEEESaIS9_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!54, !53, i64 8}
!56 = !{!54, !53, i64 0}
!57 = !{!"p1 _ZTSN5osgeo4proj8metadata21GeographicBoundingBoxE", !14, i64 0}
!58 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxELN9__gnu_cxx12_Lock_policyE2EE", !57, i64 0, !38, i64 8}
!59 = !{!58, !57, i64 0}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!35, !35, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!64 = !{!63, !47, i64 0}
!65 = !{!"p1 _ZTS8PJconsts", !14, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!48, !48, i64 0}
!68 = !{!23, !11, i64 16}
!69 = !{!63, !47, i64 16}
!70 = !{!54, !53, i64 16}
!71 = distinct !{!71, !26}
!72 = distinct !{null}
!73 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!74 = distinct !{ptr @_ZNSt10shared_ptrIN5osgeo4proj8metadata6ExtentEEaSEOS4_, null, null, null, null}
!75 = distinct !{ptr @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata6ExtentEEED2Ev, null, null, null}
!76 = distinct !{!76, !26}
!77 = distinct !{!77, !26}
!78 = distinct !{!78, !26}
!79 = distinct !{!79, !26}
!80 = distinct !{null}
!81 = distinct !{!81, !26}
!82 = distinct !{!82, !26}
!83 = distinct !{ptr @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev, null, null, null}
!84 = distinct !{ptr @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev, ptr @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!85 = distinct !{!85, !26}
!86 = !{!23, !15, i64 8}
!87 = !{!"_ZTSSt13_Ios_Fmtflags", !10, i64 0}
!88 = !{!"_ZTSSt12_Ios_Iostate", !10, i64 0}
!89 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!90 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !18, i64 8}
!91 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!92 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!93 = !{!"_ZTSSt6locale", !92, i64 0}
!94 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !87, i64 24, !88, i64 28, !88, i64 32, !89, i64 40, !90, i64 48, !10, i64 64, !11, i64 192, !91, i64 200, !93, i64 208}
!95 = !{!"p1 _ZTSSo", !14, i64 0}
!96 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 0}
!97 = !{!"p1 _ZTSSt5ctypeIcE", !14, i64 0}
!98 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!99 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!100 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !94, i64 0, !95, i64 216, !10, i64 224, !35, i64 225, !96, i64 232, !97, i64 240, !98, i64 248, !99, i64 256}
!101 = !{!100, !97, i64 240}
!102 = !{!"_ZTSNSt6locale5facetE", !11, i64 8}
!103 = !{!"p1 _ZTS15__locale_struct", !14, i64 0}
!104 = !{!"p1 int", !14, i64 0}
!105 = !{!"p1 short", !14, i64 0}
!106 = !{!"_ZTSSt5ctypeIcE", !102, i64 0, !103, i64 16, !35, i64 24, !104, i64 32, !104, i64 40, !105, i64 48, !10, i64 56, !10, i64 57, !10, i64 313, !10, i64 569}
!107 = !{!106, !10, i64 56}
!108 = !{!"_ZTSN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !35, i64 0, !19, i64 8}
!109 = !{!108, !35, i64 0}
!110 = !{!"_ZTS7PJ_LIST", !15, i64 0, !14, i64 8, !47, i64 16}
!111 = !{!110, !15, i64 0}
!112 = !{!110, !47, i64 16}
!113 = !{!"_ZTS8PJ_ELLPS", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!114 = !{!113, !15, i64 0}
!115 = !{!113, !15, i64 8}
!116 = !{!113, !15, i64 16}
!117 = !{!113, !15, i64 24}
!118 = !{!"_ZTS14PROJ_UNIT_INFO", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !48, i64 32, !15, i64 40, !11, i64 48}
!119 = !{!118, !15, i64 40}
!120 = !{!118, !48, i64 32}
!121 = !{!118, !15, i64 16}
!122 = !{!"_ZTS18PJ_PRIME_MERIDIANS", !15, i64 0, !15, i64 8}
!123 = !{!122, !15, i64 0}
!124 = !{!122, !15, i64 8}
!125 = !{!"p1 _ZTSN5osgeo4proj8metadata6ExtentE", !14, i64 0}
!126 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj8metadata6ExtentELN9__gnu_cxx12_Lock_policyE2EE", !125, i64 0, !38, i64 8}
!127 = !{!126, !125, i64 0}
!128 = !{!"p1 _ZTSN5osgeo4proj2io16AuthorityFactoryE", !14, i64 0}
!129 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj2io16AuthorityFactoryELN9__gnu_cxx12_Lock_policyE2EE", !128, i64 0, !38, i64 8}
!130 = !{!129, !128, i64 0}
!131 = !{!"_ZTSNSt7__cxx1110_List_baseISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE10_List_implE", !51, i64 0}
!132 = !{!"_ZTSNSt7__cxx1110_List_baseISt4pairINS_12basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEE", !131, i64 0}
!133 = !{!132, !18, i64 16}
!134 = !{!23, !15, i64 0}
!135 = distinct !{null, null, null, null}
!136 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!137 = distinct !{ptr @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!138 = distinct !{null, null, null}
!139 = distinct !{!139, !26}
!140 = !{!53, !53, i64 0}
!141 = !{!"p1 _ZTSN5osgeo4proj8metadata16GeographicExtentE", !14, i64 0}
!142 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj8metadata16GeographicExtentELN9__gnu_cxx12_Lock_policyE2EE", !141, i64 0, !38, i64 8}
!143 = !{!142, !141, i64 0}
!144 = distinct !{null, null, null, null, null, null, null}
!145 = distinct !{!145, !26}
!146 = !{!63, !47, i64 8}
!147 = distinct !{!147, !26}
!148 = !{ptr @_Z6dmstorPKcPPc, ptr @strtod}
!149 = distinct !{null}
!150 = !{!50, !49, i64 8}
!151 = !{!51, !18, i64 16}
end_hunk_0
